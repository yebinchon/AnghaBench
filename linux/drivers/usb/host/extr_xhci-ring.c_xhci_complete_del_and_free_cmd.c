
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_command {scalar_t__ completion; int status; int cmd_list; } ;


 int complete (scalar_t__) ;
 int kfree (struct xhci_command*) ;
 int list_del (int *) ;

__attribute__((used)) static void xhci_complete_del_and_free_cmd(struct xhci_command *cmd, u32 status)
{
 list_del(&cmd->cmd_list);

 if (cmd->completion) {
  cmd->status = status;
  complete(cmd->completion);
 } else {
  kfree(cmd);
 }
}
