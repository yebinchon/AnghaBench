
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int vfs_inode; } ;
struct afs_net {int dummy; } ;


 struct afs_net* afs_i2net (int *) ;

__attribute__((used)) static inline struct afs_net *afs_v2net(struct afs_vnode *vnode)
{
 return afs_i2net(&vnode->vfs_inode);
}
