
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isst_if_mbox_cmd {int command; int sub_command; int logical_cpu; int req_data; int parameter; } ;
struct isst_if_cmd_cb {int (* cmd_callback ) (int *,int*,int) ;} ;
struct isst_cmd {int cmd; int cpu; int data; int param; } ;


 int GENMASK_ULL (int,int) ;
 int stub1 (int *,int*,int) ;

__attribute__((used)) static void isst_mbox_resume_command(struct isst_if_cmd_cb *cb,
         struct isst_cmd *sst_cmd)
{
 struct isst_if_mbox_cmd mbox_cmd;
 int wr_only;

 mbox_cmd.command = (sst_cmd->cmd & GENMASK_ULL(31, 16)) >> 16;
 mbox_cmd.sub_command = sst_cmd->cmd & GENMASK_ULL(15, 0);
 mbox_cmd.parameter = sst_cmd->param;
 mbox_cmd.req_data = sst_cmd->data;
 mbox_cmd.logical_cpu = sst_cmd->cpu;
 (cb->cmd_callback)((u8 *)&mbox_cmd, &wr_only, 1);
}
