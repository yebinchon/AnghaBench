
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcm_qla2xxx_tpg {int se_tpg; } ;
struct tcm_qla2xxx_lport {struct tcm_qla2xxx_tpg* tpg_1; } ;
struct se_session {int dummy; } ;
struct qla_tgt_cmd {int dummy; } ;
struct qla_hw_data {int cur_fw_xcb_count; } ;
struct fc_port {int dummy; } ;
struct TYPE_4__ {struct tcm_qla2xxx_lport* target_lport_ptr; } ;
struct TYPE_5__ {TYPE_1__ vha_tgt; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
typedef int port_name ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct se_session*) ;
 int PTR_ERR (struct se_session*) ;
 int TARGET_PROT_ALL ;
 int TCM_QLA2XXX_DEFAULT_TAGS ;
 int dump_stack () ;
 int memset (unsigned char**,int ,int) ;
 int pr_err (char*) ;
 int snprintf (unsigned char*,int,char*,unsigned char*) ;
 struct se_session* target_setup_session (int *,int,int,int ,unsigned char*,struct fc_port*,int ) ;
 int tcm_qla2xxx_session_cb ;

__attribute__((used)) static int tcm_qla2xxx_check_initiator_node_acl(
 scsi_qla_host_t *vha,
 unsigned char *fc_wwpn,
 struct fc_port *qlat_sess)
{
 struct qla_hw_data *ha = vha->hw;
 struct tcm_qla2xxx_lport *lport;
 struct tcm_qla2xxx_tpg *tpg;
 struct se_session *se_sess;
 unsigned char port_name[36];
 int num_tags = (ha->cur_fw_xcb_count) ? ha->cur_fw_xcb_count :
         TCM_QLA2XXX_DEFAULT_TAGS;

 lport = vha->vha_tgt.target_lport_ptr;
 if (!lport) {
  pr_err("Unable to locate struct tcm_qla2xxx_lport\n");
  dump_stack();
  return -EINVAL;
 }



 tpg = lport->tpg_1;
 if (!tpg) {
  pr_err("Unable to locate struct tcm_qla2xxx_lport->tpg_1\n");
  return -EINVAL;
 }




 memset(&port_name, 0, 36);
 snprintf(port_name, sizeof(port_name), "%8phC", fc_wwpn);




 se_sess = target_setup_session(&tpg->se_tpg, num_tags,
           sizeof(struct qla_tgt_cmd),
           TARGET_PROT_ALL, port_name,
           qlat_sess, tcm_qla2xxx_session_cb);
 if (IS_ERR(se_sess))
  return PTR_ERR(se_sess);

 return 0;
}
