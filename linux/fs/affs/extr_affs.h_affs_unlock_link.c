
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_link_lock; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int up (int *) ;

__attribute__((used)) static inline void
affs_unlock_link(struct inode *inode)
{
 up(&AFFS_I(inode)->i_link_lock);
}
