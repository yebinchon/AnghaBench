
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_r2t {int targ_xfer_tag; } ;
struct iscsi_conn {struct cxgbit_sock* context; } ;
struct TYPE_4__ {int data_length; scalar_t__ t_data_nents; int * t_data_sg; } ;
struct iscsi_cmd {TYPE_2__ se_cmd; } ;
struct TYPE_3__ {int flags; struct cxgbit_device* cdev; } ;
struct cxgbit_sock {TYPE_1__ com; } ;
struct cxgbit_device {int dummy; } ;
struct cxgbi_task_tag_info {int tag; scalar_t__ nents; int * sgl; } ;
struct cxgbit_cmd {int setup_ddp; int release; struct cxgbi_task_tag_info ttinfo; } ;


 int CSK_DDP_ENABLE ;
 int EINVAL ;
 int cxgbit_ddp_reserve (struct cxgbit_sock*,struct cxgbi_task_tag_info*,int ) ;
 struct cxgbit_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int pr_debug (char*,struct cxgbit_sock*,struct iscsi_cmd*,int ,...) ;
 int test_bit (int ,int *) ;

void
cxgbit_get_r2t_ttt(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
     struct iscsi_r2t *r2t)
{
 struct cxgbit_sock *csk = conn->context;
 struct cxgbit_device *cdev = csk->com.cdev;
 struct cxgbit_cmd *ccmd = iscsit_priv_cmd(cmd);
 struct cxgbi_task_tag_info *ttinfo = &ccmd->ttinfo;
 int ret = -EINVAL;

 if ((!ccmd->setup_ddp) ||
     (!test_bit(CSK_DDP_ENABLE, &csk->com.flags)))
  goto out;

 ccmd->setup_ddp = 0;

 ttinfo->sgl = cmd->se_cmd.t_data_sg;
 ttinfo->nents = cmd->se_cmd.t_data_nents;

 ret = cxgbit_ddp_reserve(csk, ttinfo, cmd->se_cmd.data_length);
 if (ret < 0) {
  pr_debug("csk 0x%p, cmd 0x%p, xfer len %u, sgcnt %u no ddp.\n",
    csk, cmd, cmd->se_cmd.data_length, ttinfo->nents);

  ttinfo->sgl = ((void*)0);
  ttinfo->nents = 0;
 } else {
  ccmd->release = 1;
 }
out:
 pr_debug("cdev 0x%p, cmd 0x%p, tag 0x%x\n", cdev, cmd, ttinfo->tag);
 r2t->targ_xfer_tag = ttinfo->tag;
}
