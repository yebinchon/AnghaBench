
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_r2t {int seq_complete; } ;
struct iscsi_cmd {int r2t_lock; int outstanding_r2ts; scalar_t__ unsolicited_data; } ;


 struct iscsi_r2t* iscsit_get_r2t_for_eos (struct iscsi_cmd*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iscsit_dataout_update_r2t(struct iscsi_cmd *cmd, u32 offset, u32 length)
{
 struct iscsi_r2t *r2t;

 if (cmd->unsolicited_data)
  return 0;

 r2t = iscsit_get_r2t_for_eos(cmd, offset, length);
 if (!r2t)
  return -1;

 spin_lock_bh(&cmd->r2t_lock);
 r2t->seq_complete = 1;
 cmd->outstanding_r2ts--;
 spin_unlock_bh(&cmd->r2t_lock);

 return 0;
}
