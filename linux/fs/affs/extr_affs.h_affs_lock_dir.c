
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_hash_lock; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int down (int *) ;

__attribute__((used)) static inline void
affs_lock_dir(struct inode *inode)
{
 down(&AFFS_I(inode)->i_hash_lock);
}
