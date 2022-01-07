
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_pr_registration {scalar_t__ pr_res_key; struct se_node_acl* pr_reg_nacl; scalar_t__ pr_reg_all_tg_pt; } ;
struct se_node_acl {int initiatorname; } ;
struct se_device {int dev_reservation_lock; struct t10_pr_registration* dev_pr_res_holder; } ;


 int EPERM ;
 int __core_scsi3_complete_pro_release (struct se_device*,struct se_node_acl*,struct t10_pr_registration*,int ,int) ;
 int pr_err (char*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int core_scsi3_check_implicit_release(
 struct se_device *dev,
 struct t10_pr_registration *pr_reg)
{
 struct se_node_acl *nacl = pr_reg->pr_reg_nacl;
 struct t10_pr_registration *pr_res_holder;
 int ret = 0;

 spin_lock(&dev->dev_reservation_lock);
 pr_res_holder = dev->dev_pr_res_holder;
 if (!pr_res_holder) {
  spin_unlock(&dev->dev_reservation_lock);
  return ret;
 }
 if (pr_res_holder == pr_reg) {
  __core_scsi3_complete_pro_release(dev, nacl, pr_reg, 0, 1);
  ret = 1;






 } else if (pr_reg->pr_reg_all_tg_pt &&
    (!strcmp(pr_res_holder->pr_reg_nacl->initiatorname,
     pr_reg->pr_reg_nacl->initiatorname)) &&
    (pr_res_holder->pr_res_key == pr_reg->pr_res_key)) {
  pr_err("SPC-3 PR: Unable to perform ALL_TG_PT=1"
   " UNREGISTER while existing reservation with matching"
   " key 0x%016Lx is present from another SCSI Initiator"
   " Port\n", pr_reg->pr_res_key);
  ret = -EPERM;
 }
 spin_unlock(&dev->dev_reservation_lock);

 return ret;
}
