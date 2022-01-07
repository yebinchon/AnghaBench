
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_pr_registration {scalar_t__ pr_reg_all_tg_pt; int pr_res_type; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int initiatorname; } ;
struct se_device {int dev_reservation_lock; struct t10_pr_registration* dev_pr_res_holder; } ;
struct TYPE_2__ {int fabric_name; } ;


 int PR_REG_ISID_ID_LEN ;
 int core_pr_dump_initiator_port (struct t10_pr_registration*,char*,int) ;
 int core_scsi3_pr_dump_type (int ) ;
 int memset (char*,int ,int) ;
 int pr_debug (char*,int ,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void core_scsi3_aptpl_reserve(
 struct se_device *dev,
 struct se_portal_group *tpg,
 struct se_node_acl *node_acl,
 struct t10_pr_registration *pr_reg)
{
 char i_buf[PR_REG_ISID_ID_LEN];

 memset(i_buf, 0, PR_REG_ISID_ID_LEN);
 core_pr_dump_initiator_port(pr_reg, i_buf, PR_REG_ISID_ID_LEN);

 spin_lock(&dev->dev_reservation_lock);
 dev->dev_pr_res_holder = pr_reg;
 spin_unlock(&dev->dev_reservation_lock);

 pr_debug("SPC-3 PR [%s] Service Action: APTPL RESERVE created"
  " new reservation holder TYPE: %s ALL_TG_PT: %d\n",
  tpg->se_tpg_tfo->fabric_name,
  core_scsi3_pr_dump_type(pr_reg->pr_res_type),
  (pr_reg->pr_reg_all_tg_pt) ? 1 : 0);
 pr_debug("SPC-3 PR [%s] RESERVE Node: %s%s\n",
  tpg->se_tpg_tfo->fabric_name, node_acl->initiatorname,
  i_buf);
}
