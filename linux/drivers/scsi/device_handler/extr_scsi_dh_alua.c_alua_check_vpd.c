
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct alua_port_group {int kref; int lock; int dh_list; int device_id_str; scalar_t__ device_id_len; } ;
struct alua_dh_data {int pg_lock; int pg; int node; } ;


 int ALUA_DH_NAME ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct alua_port_group*) ;
 int KERN_INFO ;
 int PTR_ERR (struct alua_port_group*) ;
 int SCSI_DH_DEV_UNSUPP ;
 int SCSI_DH_NOMEM ;
 int SCSI_DH_OK ;
 struct alua_port_group* alua_alloc_pg (struct scsi_device*,int,int) ;
 int alua_rtpg_queue (struct alua_port_group*,struct scsi_device*,int *,int) ;
 int kref_put (int *,int ) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct alua_port_group*) ;
 struct alua_port_group* rcu_dereference_protected (int ,int ) ;
 int release_port_group ;
 int scsi_vpd_tpg_id (struct scsi_device*,int*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int alua_check_vpd(struct scsi_device *sdev, struct alua_dh_data *h,
     int tpgs)
{
 int rel_port = -1, group_id;
 struct alua_port_group *pg, *old_pg = ((void*)0);
 bool pg_updated = 0;
 unsigned long flags;

 group_id = scsi_vpd_tpg_id(sdev, &rel_port);
 if (group_id < 0) {





  sdev_printk(KERN_INFO, sdev,
       "%s: No target port descriptors found\n",
       ALUA_DH_NAME);
  return SCSI_DH_DEV_UNSUPP;
 }

 pg = alua_alloc_pg(sdev, group_id, tpgs);
 if (IS_ERR(pg)) {
  if (PTR_ERR(pg) == -ENOMEM)
   return SCSI_DH_NOMEM;
  return SCSI_DH_DEV_UNSUPP;
 }
 if (pg->device_id_len)
  sdev_printk(KERN_INFO, sdev,
       "%s: device %s port group %x rel port %x\n",
       ALUA_DH_NAME, pg->device_id_str,
       group_id, rel_port);
 else
  sdev_printk(KERN_INFO, sdev,
       "%s: port group %x rel port %x\n",
       ALUA_DH_NAME, group_id, rel_port);


 spin_lock(&h->pg_lock);
 old_pg = rcu_dereference_protected(h->pg, lockdep_is_held(&h->pg_lock));
 if (old_pg != pg) {

  if (h->pg) {
   spin_lock_irqsave(&old_pg->lock, flags);
   list_del_rcu(&h->node);
   spin_unlock_irqrestore(&old_pg->lock, flags);
  }
  rcu_assign_pointer(h->pg, pg);
  pg_updated = 1;
 }

 spin_lock_irqsave(&pg->lock, flags);
 if (pg_updated)
  list_add_rcu(&h->node, &pg->dh_list);
 spin_unlock_irqrestore(&pg->lock, flags);

 alua_rtpg_queue(rcu_dereference_protected(h->pg,
        lockdep_is_held(&h->pg_lock)),
   sdev, ((void*)0), 1);
 spin_unlock(&h->pg_lock);

 if (old_pg)
  kref_put(&old_pg->kref, release_port_group);

 return SCSI_DH_OK;
}
