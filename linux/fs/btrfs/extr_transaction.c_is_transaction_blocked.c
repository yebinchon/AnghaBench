
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_transaction {scalar_t__ state; int aborted; } ;


 scalar_t__ TRANS_STATE_BLOCKED ;
 scalar_t__ TRANS_STATE_UNBLOCKED ;

__attribute__((used)) static inline int is_transaction_blocked(struct btrfs_transaction *trans)
{
 return (trans->state >= TRANS_STATE_BLOCKED &&
  trans->state < TRANS_STATE_UNBLOCKED &&
  !trans->aborted);
}
