
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct export_operations {int (* get_name ) (struct dentry*,char*,struct dentry*) ;} ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct export_operations* s_export_op; } ;


 int get_name (struct path*,char*,struct dentry*) ;
 int stub1 (struct dentry*,char*,struct dentry*) ;

__attribute__((used)) static int exportfs_get_name(struct vfsmount *mnt, struct dentry *dir,
  char *name, struct dentry *child)
{
 const struct export_operations *nop = dir->d_sb->s_export_op;
 struct path path = {.mnt = mnt, .dentry = dir};

 if (nop->get_name)
  return nop->get_name(dir, name, child);
 else
  return get_name(&path, name, child);
}
