
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_transaction {int num_extwriters; } ;


 unsigned int TRANS_EXTWRITERS ;
 int atomic_set (int *,int) ;

__attribute__((used)) static inline void extwriter_counter_init(struct btrfs_transaction *trans,
       unsigned int type)
{
 atomic_set(&trans->num_extwriters, ((type & TRANS_EXTWRITERS) ? 1 : 0));
}
