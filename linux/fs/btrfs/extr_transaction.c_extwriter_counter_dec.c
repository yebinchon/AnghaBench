
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_transaction {int num_extwriters; } ;


 unsigned int TRANS_EXTWRITERS ;
 int atomic_dec (int *) ;

__attribute__((used)) static inline void extwriter_counter_dec(struct btrfs_transaction *trans,
      unsigned int type)
{
 if (type & TRANS_EXTWRITERS)
  atomic_dec(&trans->num_extwriters);
}
