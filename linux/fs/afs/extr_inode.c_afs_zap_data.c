
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int i_mapping; int i_mode; } ;
struct TYPE_3__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_2__ vfs_inode; int cache; TYPE_1__ fid; } ;


 scalar_t__ S_ISREG (int ) ;
 int _enter (char*,int ,int ) ;
 int fscache_invalidate (int ) ;
 int invalidate_inode_pages2 (int ) ;
 int invalidate_remote_inode (TYPE_2__*) ;

void afs_zap_data(struct afs_vnode *vnode)
{
 _enter("{%llx:%llu}", vnode->fid.vid, vnode->fid.vnode);
 if (S_ISREG(vnode->vfs_inode.i_mode))
  invalidate_remote_inode(&vnode->vfs_inode);
 else
  invalidate_inode_pages2(vnode->vfs_inode.i_mapping);
}
