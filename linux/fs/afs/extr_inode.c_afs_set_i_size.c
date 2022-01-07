
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int i_blocks; } ;
struct afs_vnode {TYPE_1__ vfs_inode; } ;


 int i_size_write (TYPE_1__*,int) ;

__attribute__((used)) static void afs_set_i_size(struct afs_vnode *vnode, u64 size)
{
 i_size_write(&vnode->vfs_inode, size);
 vnode->vfs_inode.i_blocks = ((size + 1023) >> 10) << 1;
}
