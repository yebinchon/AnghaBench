
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inode {int dummy; } ;
struct file_lock {int fl_flags; int fl_type; int fl_file; } ;
struct file {int dummy; } ;
struct ceph_inode_info {int i_ceph_flags; int i_ceph_lock; } ;


 int CEPH_I_ERROR_FILELOCK ;
 int CEPH_LOCK_EXCL ;
 int CEPH_LOCK_FLOCK ;
 int CEPH_LOCK_SHARED ;
 int CEPH_LOCK_UNLOCK ;
 int CEPH_MDS_OP_SETFILELOCK ;
 int EIO ;
 int ENOLCK ;
 int EOPNOTSUPP ;
 int FL_FLOCK ;
 int F_RDLCK ;
 int F_UNLCK ;
 int F_WRLCK ;
 scalar_t__ IS_SETLKW (int) ;
 int LOCK_MAND ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_lock_message (int ,int ,struct inode*,int,int,struct file_lock*) ;
 int dout (char*,int) ;
 struct inode* file_inode (struct file*) ;
 int locks_lock_file_wait (struct file*,struct file_lock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ceph_flock(struct file *file, int cmd, struct file_lock *fl)
{
 struct inode *inode = file_inode(file);
 struct ceph_inode_info *ci = ceph_inode(inode);
 int err = 0;
 u8 wait = 0;
 u8 lock_cmd;

 if (!(fl->fl_flags & FL_FLOCK))
  return -ENOLCK;

 if (fl->fl_type & LOCK_MAND)
  return -EOPNOTSUPP;

 dout("ceph_flock, fl_file: %p\n", fl->fl_file);

 spin_lock(&ci->i_ceph_lock);
 if (ci->i_ceph_flags & CEPH_I_ERROR_FILELOCK) {
  err = -EIO;
 }
 spin_unlock(&ci->i_ceph_lock);
 if (err < 0) {
  if (F_UNLCK == fl->fl_type)
   locks_lock_file_wait(file, fl);
  return err;
 }

 if (IS_SETLKW(cmd))
  wait = 1;

 if (F_RDLCK == fl->fl_type)
  lock_cmd = CEPH_LOCK_SHARED;
 else if (F_WRLCK == fl->fl_type)
  lock_cmd = CEPH_LOCK_EXCL;
 else
  lock_cmd = CEPH_LOCK_UNLOCK;

 err = ceph_lock_message(CEPH_LOCK_FLOCK, CEPH_MDS_OP_SETFILELOCK,
    inode, lock_cmd, wait, fl);
 if (!err) {
  err = locks_lock_file_wait(file, fl);
  if (err) {
   ceph_lock_message(CEPH_LOCK_FLOCK,
       CEPH_MDS_OP_SETFILELOCK,
       inode, CEPH_LOCK_UNLOCK, 0, fl);
   dout("got %d on locks_lock_file_wait, undid lock\n", err);
  }
 }
 return err;
}
