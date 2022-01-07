
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int event_q; int disco_q; int drain_mutex; } ;


 int __sas_drain_work (struct sas_ha_struct*) ;
 int destroy_workqueue (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sas_disable_events (struct sas_ha_struct*) ;
 int sas_unregister_ports (struct sas_ha_struct*) ;

int sas_unregister_ha(struct sas_ha_struct *sas_ha)
{
 sas_disable_events(sas_ha);
 sas_unregister_ports(sas_ha);


 mutex_lock(&sas_ha->drain_mutex);
 __sas_drain_work(sas_ha);
 mutex_unlock(&sas_ha->drain_mutex);

 destroy_workqueue(sas_ha->disco_q);
 destroy_workqueue(sas_ha->event_q);

 return 0;
}
