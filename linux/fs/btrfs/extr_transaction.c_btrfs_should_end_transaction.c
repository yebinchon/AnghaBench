
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flushing; } ;
struct btrfs_transaction {scalar_t__ state; TYPE_1__ delayed_refs; } ;
struct btrfs_trans_handle {struct btrfs_transaction* transaction; } ;


 scalar_t__ TRANS_STATE_BLOCKED ;
 int should_end_transaction (struct btrfs_trans_handle*) ;
 int smp_mb () ;

int btrfs_should_end_transaction(struct btrfs_trans_handle *trans)
{
 struct btrfs_transaction *cur_trans = trans->transaction;

 smp_mb();
 if (cur_trans->state >= TRANS_STATE_BLOCKED ||
     cur_trans->delayed_refs.flushing)
  return 1;

 return should_end_transaction(trans);
}
