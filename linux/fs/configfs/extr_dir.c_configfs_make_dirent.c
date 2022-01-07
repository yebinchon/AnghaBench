
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int d_fsdata; } ;
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {struct dentry* s_dentry; int s_mode; } ;


 scalar_t__ IS_ERR (struct configfs_dirent*) ;
 int PTR_ERR (struct configfs_dirent*) ;
 int configfs_get (struct configfs_dirent*) ;
 struct configfs_dirent* configfs_new_dirent (struct configfs_dirent*,void*,int,struct configfs_fragment*) ;

int configfs_make_dirent(struct configfs_dirent * parent_sd,
    struct dentry * dentry, void * element,
    umode_t mode, int type, struct configfs_fragment *frag)
{
 struct configfs_dirent * sd;

 sd = configfs_new_dirent(parent_sd, element, type, frag);
 if (IS_ERR(sd))
  return PTR_ERR(sd);

 sd->s_mode = mode;
 sd->s_dentry = dentry;
 if (dentry)
  dentry->d_fsdata = configfs_get(sd);

 return 0;
}
