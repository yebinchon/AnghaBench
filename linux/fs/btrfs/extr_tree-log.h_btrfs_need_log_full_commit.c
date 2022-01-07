
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {scalar_t__ transid; TYPE_1__* fs_info; } ;
struct TYPE_2__ {int last_trans_log_full_commit; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline int btrfs_need_log_full_commit(struct btrfs_trans_handle *trans)
{
 return READ_ONCE(trans->fs_info->last_trans_log_full_commit) ==
  trans->transid;
}
