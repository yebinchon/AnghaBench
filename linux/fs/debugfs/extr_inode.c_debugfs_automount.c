
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct path {TYPE_1__* dentry; } ;
typedef struct vfsmount* (* debugfs_automount_t ) (TYPE_1__*,int ) ;
struct TYPE_5__ {int i_private; } ;
struct TYPE_4__ {scalar_t__ d_fsdata; } ;


 TYPE_2__* d_inode (TYPE_1__*) ;

__attribute__((used)) static struct vfsmount *debugfs_automount(struct path *path)
{
 debugfs_automount_t f;
 f = (debugfs_automount_t)path->dentry->d_fsdata;
 return f(path->dentry, d_inode(path->dentry)->i_private);
}
