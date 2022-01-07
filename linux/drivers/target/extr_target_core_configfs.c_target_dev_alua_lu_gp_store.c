
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct t10_alua_lu_gp_member {int lu_gp_mem_lock; struct t10_alua_lu_gp* lu_gp; } ;
struct TYPE_6__ {int cg_item; } ;
struct t10_alua_lu_gp {int lu_gp_id; TYPE_3__ lu_gp_group; } ;
struct TYPE_4__ {int cg_item; } ;
struct se_hba {TYPE_1__ hba_group; } ;
struct TYPE_5__ {int cg_item; } ;
struct se_device {TYPE_2__ dev_group; struct t10_alua_lu_gp_member* dev_alua_lu_gp_mem; struct se_hba* se_hba; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 int LU_GROUP_NAME_BUF ;
 int __core_alua_attach_lu_gp_mem (struct t10_alua_lu_gp_member*,struct t10_alua_lu_gp*) ;
 int __core_alua_drop_lu_gp_mem (struct t10_alua_lu_gp_member*,struct t10_alua_lu_gp*) ;
 int config_item_name (int *) ;
 struct t10_alua_lu_gp* core_alua_get_lu_gp_by_name (int ) ;
 int core_alua_put_lu_gp_from_name (struct t10_alua_lu_gp*) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,char*,int ,int ,int ,...) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int strstrip (unsigned char*) ;
 struct se_device* to_device (struct config_item*) ;

__attribute__((used)) static ssize_t target_dev_alua_lu_gp_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_device *dev = to_device(item);
 struct se_hba *hba = dev->se_hba;
 struct t10_alua_lu_gp *lu_gp = ((void*)0), *lu_gp_new = ((void*)0);
 struct t10_alua_lu_gp_member *lu_gp_mem;
 unsigned char buf[LU_GROUP_NAME_BUF];
 int move = 0;

 lu_gp_mem = dev->dev_alua_lu_gp_mem;
 if (!lu_gp_mem)
  return count;

 if (count > LU_GROUP_NAME_BUF) {
  pr_err("ALUA LU Group Alias too large!\n");
  return -EINVAL;
 }
 memset(buf, 0, LU_GROUP_NAME_BUF);
 memcpy(buf, page, count);




 if (strcmp(strstrip(buf), "NULL")) {





  lu_gp_new = core_alua_get_lu_gp_by_name(strstrip(buf));
  if (!lu_gp_new)
   return -ENODEV;
 }

 spin_lock(&lu_gp_mem->lu_gp_mem_lock);
 lu_gp = lu_gp_mem->lu_gp;
 if (lu_gp) {




  if (!lu_gp_new) {
   pr_debug("Target_Core_ConfigFS: Releasing %s/%s"
    " from ALUA LU Group: core/alua/lu_gps/%s, ID:"
    " %hu\n",
    config_item_name(&hba->hba_group.cg_item),
    config_item_name(&dev->dev_group.cg_item),
    config_item_name(&lu_gp->lu_gp_group.cg_item),
    lu_gp->lu_gp_id);

   __core_alua_drop_lu_gp_mem(lu_gp_mem, lu_gp);
   spin_unlock(&lu_gp_mem->lu_gp_mem_lock);

   return count;
  }



  __core_alua_drop_lu_gp_mem(lu_gp_mem, lu_gp);
  move = 1;
 }



 __core_alua_attach_lu_gp_mem(lu_gp_mem, lu_gp_new);
 spin_unlock(&lu_gp_mem->lu_gp_mem_lock);

 pr_debug("Target_Core_ConfigFS: %s %s/%s to ALUA LU Group:"
  " core/alua/lu_gps/%s, ID: %hu\n",
  (move) ? "Moving" : "Adding",
  config_item_name(&hba->hba_group.cg_item),
  config_item_name(&dev->dev_group.cg_item),
  config_item_name(&lu_gp_new->lu_gp_group.cg_item),
  lu_gp_new->lu_gp_id);

 core_alua_put_lu_gp_from_name(lu_gp_new);
 return count;
}
