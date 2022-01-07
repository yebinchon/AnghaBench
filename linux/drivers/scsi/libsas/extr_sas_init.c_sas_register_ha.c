
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {void* event_q; int eh_ata_q; int eh_done_q; void* disco_q; int dev; int event_thres; int eh_dev_q; int defer_q; int eh_wait_q; int drain_mutex; int lock; int state; int sas_addr; int hashed_sas_addr; int phy_port_lock; int disco_mutex; } ;
typedef int name ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int SAS_HA_REGISTERED ;
 int SAS_PHY_SHUTDOWN_THRES ;
 void* create_singlethread_workqueue (char*) ;
 int destroy_workqueue (void*) ;
 char* dev_name (int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int pr_notice (char*,int) ;
 int sas_hash_addr (int ,int ) ;
 int sas_init_events (struct sas_ha_struct*) ;
 int sas_register_phys (struct sas_ha_struct*) ;
 int sas_register_ports (struct sas_ha_struct*) ;
 int sas_unregister_ports (struct sas_ha_struct*) ;
 int set_bit (int ,int *) ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_init (int *) ;

int sas_register_ha(struct sas_ha_struct *sas_ha)
{
 char name[64];
 int error = 0;

 mutex_init(&sas_ha->disco_mutex);
 spin_lock_init(&sas_ha->phy_port_lock);
 sas_hash_addr(sas_ha->hashed_sas_addr, sas_ha->sas_addr);

 set_bit(SAS_HA_REGISTERED, &sas_ha->state);
 spin_lock_init(&sas_ha->lock);
 mutex_init(&sas_ha->drain_mutex);
 init_waitqueue_head(&sas_ha->eh_wait_q);
 INIT_LIST_HEAD(&sas_ha->defer_q);
 INIT_LIST_HEAD(&sas_ha->eh_dev_q);

 sas_ha->event_thres = SAS_PHY_SHUTDOWN_THRES;

 error = sas_register_phys(sas_ha);
 if (error) {
  pr_notice("couldn't register sas phys:%d\n", error);
  return error;
 }

 error = sas_register_ports(sas_ha);
 if (error) {
  pr_notice("couldn't register sas ports:%d\n", error);
  goto Undo_phys;
 }

 error = sas_init_events(sas_ha);
 if (error) {
  pr_notice("couldn't start event thread:%d\n", error);
  goto Undo_ports;
 }

 error = -ENOMEM;
 snprintf(name, sizeof(name), "%s_event_q", dev_name(sas_ha->dev));
 sas_ha->event_q = create_singlethread_workqueue(name);
 if (!sas_ha->event_q)
  goto Undo_ports;

 snprintf(name, sizeof(name), "%s_disco_q", dev_name(sas_ha->dev));
 sas_ha->disco_q = create_singlethread_workqueue(name);
 if (!sas_ha->disco_q)
  goto Undo_event_q;

 INIT_LIST_HEAD(&sas_ha->eh_done_q);
 INIT_LIST_HEAD(&sas_ha->eh_ata_q);

 return 0;

Undo_event_q:
 destroy_workqueue(sas_ha->event_q);
Undo_ports:
 sas_unregister_ports(sas_ha);
Undo_phys:

 return error;
}
