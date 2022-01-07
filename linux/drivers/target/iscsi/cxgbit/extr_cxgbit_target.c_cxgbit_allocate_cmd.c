
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int dummy; } ;
struct TYPE_4__ {int cdev; } ;
struct cxgbit_sock {TYPE_1__ com; struct iscsi_conn* conn; } ;
struct TYPE_5__ {int tag; } ;
struct cxgbit_cmd {int setup_ddp; TYPE_2__ ttinfo; } ;
struct TYPE_6__ {int no_ddp_mask; } ;
struct cxgbi_ppm {TYPE_3__ tformat; } ;


 int TASK_INTERRUPTIBLE ;
 struct cxgbi_ppm* cdev2ppm (int ) ;
 struct iscsi_cmd* iscsit_allocate_cmd (struct iscsi_conn*,int ) ;
 struct cxgbit_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int pr_err (char*) ;

__attribute__((used)) static struct iscsi_cmd *cxgbit_allocate_cmd(struct cxgbit_sock *csk)
{
 struct iscsi_conn *conn = csk->conn;
 struct cxgbi_ppm *ppm = cdev2ppm(csk->com.cdev);
 struct cxgbit_cmd *ccmd;
 struct iscsi_cmd *cmd;

 cmd = iscsit_allocate_cmd(conn, TASK_INTERRUPTIBLE);
 if (!cmd) {
  pr_err("Unable to allocate iscsi_cmd + cxgbit_cmd\n");
  return ((void*)0);
 }

 ccmd = iscsit_priv_cmd(cmd);
 ccmd->ttinfo.tag = ppm->tformat.no_ddp_mask;
 ccmd->setup_ddp = 1;

 return cmd;
}
