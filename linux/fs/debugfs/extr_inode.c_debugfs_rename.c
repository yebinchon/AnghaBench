
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_snapshot {int name; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int d_move (struct dentry*,struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify_move (int ,int ,int *,int ,int *,struct dentry*) ;
 struct dentry* lock_rename (struct dentry*,struct dentry*) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int release_dentry_name_snapshot (struct name_snapshot*) ;
 int simple_rename (int ,struct dentry*,int ,struct dentry*,int ) ;
 int strlen (char const*) ;
 int take_dentry_name_snapshot (struct name_snapshot*,struct dentry*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;

struct dentry *debugfs_rename(struct dentry *old_dir, struct dentry *old_dentry,
  struct dentry *new_dir, const char *new_name)
{
 int error;
 struct dentry *dentry = ((void*)0), *trap;
 struct name_snapshot old_name;

 if (IS_ERR(old_dir))
  return old_dir;
 if (IS_ERR(new_dir))
  return new_dir;
 if (IS_ERR_OR_NULL(old_dentry))
  return old_dentry;

 trap = lock_rename(new_dir, old_dir);

 if (d_really_is_negative(old_dir) || d_really_is_negative(new_dir))
  goto exit;

 if (d_really_is_negative(old_dentry) || old_dentry == trap ||
     d_mountpoint(old_dentry))
  goto exit;
 dentry = lookup_one_len(new_name, new_dir, strlen(new_name));

 if (IS_ERR(dentry) || dentry == trap || d_really_is_positive(dentry))
  goto exit;

 take_dentry_name_snapshot(&old_name, old_dentry);

 error = simple_rename(d_inode(old_dir), old_dentry, d_inode(new_dir),
         dentry, 0);
 if (error) {
  release_dentry_name_snapshot(&old_name);
  goto exit;
 }
 d_move(old_dentry, dentry);
 fsnotify_move(d_inode(old_dir), d_inode(new_dir), &old_name.name,
  d_is_dir(old_dentry),
  ((void*)0), old_dentry);
 release_dentry_name_snapshot(&old_name);
 unlock_rename(new_dir, old_dir);
 dput(dentry);
 return old_dentry;
exit:
 if (dentry && !IS_ERR(dentry))
  dput(dentry);
 unlock_rename(new_dir, old_dir);
 if (IS_ERR(dentry))
  return dentry;
 return ERR_PTR(-EINVAL);
}
