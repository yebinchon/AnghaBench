
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_size; int i_mode; } ;
struct file {int f_mode; } ;
struct fd {TYPE_2__* file; } ;
struct TYPE_5__ {TYPE_1__* f_op; } ;
struct TYPE_4__ {scalar_t__ unlocked_ioctl; } ;


 int EBADF ;
 long EINVAL ;
 int FMODE_WRITE ;
 int FYI ;
 scalar_t__ S_ISDIR (int ) ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_file_copychunk_range (unsigned int,TYPE_2__*,int ,struct file*,int ,int ,int ) ;
 scalar_t__ cifs_ioctl ;
 struct fd fdget (unsigned long) ;
 int fdput (struct fd) ;
 struct inode* file_inode (TYPE_2__*) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;

__attribute__((used)) static long cifs_ioctl_copychunk(unsigned int xid, struct file *dst_file,
   unsigned long srcfd)
{
 int rc;
 struct fd src_file;
 struct inode *src_inode;

 cifs_dbg(FYI, "ioctl copychunk range\n");

 if (!(dst_file->f_mode & FMODE_WRITE)) {
  cifs_dbg(FYI, "file target not open for write\n");
  return -EINVAL;
 }


 rc = mnt_want_write_file(dst_file);
 if (rc) {
  cifs_dbg(FYI, "mnt_want_write failed with rc %d\n", rc);
  return rc;
 }

 src_file = fdget(srcfd);
 if (!src_file.file) {
  rc = -EBADF;
  goto out_drop_write;
 }

 if (src_file.file->f_op->unlocked_ioctl != cifs_ioctl) {
  rc = -EBADF;
  cifs_dbg(VFS, "src file seems to be from a different filesystem type\n");
  goto out_fput;
 }

 src_inode = file_inode(src_file.file);
 rc = -EINVAL;
 if (S_ISDIR(src_inode->i_mode))
  goto out_fput;

 rc = cifs_file_copychunk_range(xid, src_file.file, 0, dst_file, 0,
     src_inode->i_size, 0);
 if (rc > 0)
  rc = 0;
out_fput:
 fdput(src_file);
out_drop_write:
 mnt_drop_write_file(dst_file);
 return rc;
}
