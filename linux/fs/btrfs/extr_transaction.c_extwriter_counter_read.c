
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_transaction {int num_extwriters; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int extwriter_counter_read(struct btrfs_transaction *trans)
{
 return atomic_read(&trans->num_extwriters);
}
