
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_cmd {int r2t_lock; } ;


 int iscsit_add_r2t_to_list (struct iscsi_cmd*,int ,int ,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iscsit_send_recovery_r2t(
 struct iscsi_cmd *cmd,
 u32 offset,
 u32 xfer_len)
{
 int ret;

 spin_lock_bh(&cmd->r2t_lock);
 ret = iscsit_add_r2t_to_list(cmd, offset, xfer_len, 1, 0);
 spin_unlock_bh(&cmd->r2t_lock);

 return ret;
}
