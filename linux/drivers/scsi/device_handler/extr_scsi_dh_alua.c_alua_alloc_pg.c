
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct alua_port_group {scalar_t__ device_id_len; char* device_id_str; int group_id; int tpgs; int node; int lock; int dh_list; int rtpg_list; int rtpg_work; int kref; int flags; int valid_states; int state; } ;


 int ALUA_DH_NAME ;
 int ALUA_OPTIMIZE_STPG ;
 int ENOMEM ;
 struct alua_port_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_INFO ;
 int SCSI_ACCESS_STATE_OPTIMAL ;
 int TPGS_SUPPORT_ALL ;
 struct alua_port_group* alua_find_get_pg (char*,scalar_t__,int) ;
 int alua_rtpg_work ;
 int kfree (struct alua_port_group*) ;
 int kref_init (int *) ;
 struct alua_port_group* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ optimize_stpg ;
 int port_group_list ;
 int port_group_lock ;
 scalar_t__ scsi_vpd_lun_id (struct scsi_device*,char*,int) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct alua_port_group *alua_alloc_pg(struct scsi_device *sdev,
          int group_id, int tpgs)
{
 struct alua_port_group *pg, *tmp_pg;

 pg = kzalloc(sizeof(struct alua_port_group), GFP_KERNEL);
 if (!pg)
  return ERR_PTR(-ENOMEM);

 pg->device_id_len = scsi_vpd_lun_id(sdev, pg->device_id_str,
         sizeof(pg->device_id_str));
 if (pg->device_id_len <= 0) {




  sdev_printk(KERN_INFO, sdev,
       "%s: No device descriptors found\n",
       ALUA_DH_NAME);
  pg->device_id_str[0] = '\0';
  pg->device_id_len = 0;
 }
 pg->group_id = group_id;
 pg->tpgs = tpgs;
 pg->state = SCSI_ACCESS_STATE_OPTIMAL;
 pg->valid_states = TPGS_SUPPORT_ALL;
 if (optimize_stpg)
  pg->flags |= ALUA_OPTIMIZE_STPG;
 kref_init(&pg->kref);
 INIT_DELAYED_WORK(&pg->rtpg_work, alua_rtpg_work);
 INIT_LIST_HEAD(&pg->rtpg_list);
 INIT_LIST_HEAD(&pg->node);
 INIT_LIST_HEAD(&pg->dh_list);
 spin_lock_init(&pg->lock);

 spin_lock(&port_group_lock);
 tmp_pg = alua_find_get_pg(pg->device_id_str, pg->device_id_len,
      group_id);
 if (tmp_pg) {
  spin_unlock(&port_group_lock);
  kfree(pg);
  return tmp_pg;
 }

 list_add(&pg->node, &port_group_list);
 spin_unlock(&port_group_lock);

 return pg;
}
