
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_reservation {int registration_lock; int registration_list; } ;
struct t10_pr_registration {scalar_t__ pr_res_type; scalar_t__ pr_res_holder; } ;
struct se_session {int se_node_acl; } ;
struct se_device {struct t10_reservation t10_pr; } ;
struct se_cmd {struct se_device* se_dev; struct se_session* se_sess; } ;


 int EBUSY ;
 scalar_t__ PR_TYPE_EXCLUSIVE_ACCESS_ALLREG ;
 scalar_t__ PR_TYPE_EXCLUSIVE_ACCESS_REGONLY ;
 scalar_t__ PR_TYPE_WRITE_EXCLUSIVE_ALLREG ;
 scalar_t__ PR_TYPE_WRITE_EXCLUSIVE_REGONLY ;
 struct t10_pr_registration* core_scsi3_locate_pr_reg (struct se_device*,int ,struct se_session*) ;
 int core_scsi3_put_pr_reg (struct t10_pr_registration*) ;
 scalar_t__ list_empty (int *) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int target_check_scsi2_reservation_conflict(struct se_cmd *cmd)
{
 struct se_session *se_sess = cmd->se_sess;
 struct se_device *dev = cmd->se_dev;
 struct t10_pr_registration *pr_reg;
 struct t10_reservation *pr_tmpl = &dev->t10_pr;
 int conflict = 0;

 pr_reg = core_scsi3_locate_pr_reg(cmd->se_dev, se_sess->se_node_acl,
   se_sess);
 if (pr_reg) {
  if (pr_reg->pr_res_holder) {
   core_scsi3_put_pr_reg(pr_reg);
   return 1;
  }
  if ((pr_reg->pr_res_type == PR_TYPE_WRITE_EXCLUSIVE_REGONLY) ||
      (pr_reg->pr_res_type == PR_TYPE_EXCLUSIVE_ACCESS_REGONLY) ||
      (pr_reg->pr_res_type == PR_TYPE_WRITE_EXCLUSIVE_ALLREG) ||
      (pr_reg->pr_res_type == PR_TYPE_EXCLUSIVE_ACCESS_ALLREG)) {
   core_scsi3_put_pr_reg(pr_reg);
   return 1;
  }
  core_scsi3_put_pr_reg(pr_reg);
  conflict = 1;
 } else {
  spin_lock(&pr_tmpl->registration_lock);
  conflict = (list_empty(&pr_tmpl->registration_list)) ? 0 : 1;
  spin_unlock(&pr_tmpl->registration_lock);
 }

 if (conflict) {
  pr_err("Received legacy SPC-2 RESERVE/RELEASE"
   " while active SPC-3 registrations exist,"
   " returning RESERVATION_CONFLICT\n");
  return -EBUSY;
 }

 return 0;
}
