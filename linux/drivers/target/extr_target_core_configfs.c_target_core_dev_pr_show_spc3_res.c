
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t10_pr_registration {struct se_node_acl* pr_reg_nacl; } ;
struct se_node_acl {char* initiatorname; TYPE_2__* se_tpg; } ;
struct se_device {struct t10_pr_registration* dev_pr_res_holder; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* se_tpg_tfo; } ;
struct TYPE_3__ {char* fabric_name; } ;


 int PR_REG_ISID_ID_LEN ;
 int core_pr_dump_initiator_port (struct t10_pr_registration*,char*,int) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t target_core_dev_pr_show_spc3_res(struct se_device *dev,
  char *page)
{
 struct se_node_acl *se_nacl;
 struct t10_pr_registration *pr_reg;
 char i_buf[PR_REG_ISID_ID_LEN];

 memset(i_buf, 0, PR_REG_ISID_ID_LEN);

 pr_reg = dev->dev_pr_res_holder;
 if (!pr_reg)
  return sprintf(page, "No SPC-3 Reservation holder\n");

 se_nacl = pr_reg->pr_reg_nacl;
 core_pr_dump_initiator_port(pr_reg, i_buf, PR_REG_ISID_ID_LEN);

 return sprintf(page, "SPC-3 Reservation: %s Initiator: %s%s\n",
  se_nacl->se_tpg->se_tpg_tfo->fabric_name,
  se_nacl->initiatorname, i_buf);
}
