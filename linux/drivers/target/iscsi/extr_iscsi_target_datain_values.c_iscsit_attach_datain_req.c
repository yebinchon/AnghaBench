
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_datain_req {int cmd_datain_node; } ;
struct iscsi_cmd {int datain_lock; int datain_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iscsit_attach_datain_req(struct iscsi_cmd *cmd, struct iscsi_datain_req *dr)
{
 spin_lock(&cmd->datain_lock);
 list_add_tail(&dr->cmd_datain_node, &cmd->datain_list);
 spin_unlock(&cmd->datain_lock);
}
