
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; int i_mapping; } ;
struct file_lock {scalar_t__ fl_type; int fl_flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOLCK ;
 int FL_FLOCK ;
 int FL_POSIX ;
 scalar_t__ F_UNLCK ;
 int IS_SETLK (int) ;
 int IS_SETLKW (int) ;
 int P9_DEBUG_VFS ;
 scalar_t__ __mandatory_lock (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int filemap_write_and_wait (int ) ;
 int invalidate_mapping_pages (int *,int ,int) ;
 int p9_debug (int ,char*,struct file*,int,struct file_lock*,struct file*) ;
 int v9fs_file_do_lock (struct file*,int,struct file_lock*) ;

__attribute__((used)) static int v9fs_file_flock_dotl(struct file *filp, int cmd,
 struct file_lock *fl)
{
 struct inode *inode = file_inode(filp);
 int ret = -ENOLCK;

 p9_debug(P9_DEBUG_VFS, "filp: %p cmd:%d lock: %p name: %pD\n",
   filp, cmd, fl, filp);


 if (__mandatory_lock(inode) && fl->fl_type != F_UNLCK)
  goto out_err;

 if (!(fl->fl_flags & FL_FLOCK))
  goto out_err;

 if ((IS_SETLK(cmd) || IS_SETLKW(cmd)) && fl->fl_type != F_UNLCK) {
  filemap_write_and_wait(inode->i_mapping);
  invalidate_mapping_pages(&inode->i_data, 0, -1);
 }

 fl->fl_flags |= FL_POSIX;
 fl->fl_flags ^= FL_FLOCK;

 if (IS_SETLK(cmd) | IS_SETLKW(cmd))
  ret = v9fs_file_do_lock(filp, cmd, fl);
 else
  ret = -EINVAL;
out_err:
 return ret;
}
