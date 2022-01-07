
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct iscsi_r2t {int recovery_r2t; int r2t_list; void* xfer_len; void* offset; void* r2t_sn; } ;
struct iscsi_cmd {int r2t_lock; int conn; int cmd_r2t_list; int r2t_sn; } ;
typedef scalar_t__ s32 ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int ISTATE_SEND_R2T ;
 int WARN_ON_ONCE (int) ;
 int iscsit_add_cmd_to_immediate_queue (struct iscsi_cmd*,int ,int ) ;
 struct iscsi_r2t* kmem_cache_zalloc (int ,int ) ;
 int lio_r2t_cache ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int pr_err (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iscsit_add_r2t_to_list(
 struct iscsi_cmd *cmd,
 u32 offset,
 u32 xfer_len,
 int recovery,
 u32 r2t_sn)
{
 struct iscsi_r2t *r2t;

 lockdep_assert_held(&cmd->r2t_lock);

 WARN_ON_ONCE((s32)xfer_len < 0);

 r2t = kmem_cache_zalloc(lio_r2t_cache, GFP_ATOMIC);
 if (!r2t) {
  pr_err("Unable to allocate memory for struct iscsi_r2t.\n");
  return -1;
 }
 INIT_LIST_HEAD(&r2t->r2t_list);

 r2t->recovery_r2t = recovery;
 r2t->r2t_sn = (!r2t_sn) ? cmd->r2t_sn++ : r2t_sn;
 r2t->offset = offset;
 r2t->xfer_len = xfer_len;
 list_add_tail(&r2t->r2t_list, &cmd->cmd_r2t_list);
 spin_unlock_bh(&cmd->r2t_lock);

 iscsit_add_cmd_to_immediate_queue(cmd, cmd->conn, ISTATE_SEND_R2T);

 spin_lock_bh(&cmd->r2t_lock);
 return 0;
}
