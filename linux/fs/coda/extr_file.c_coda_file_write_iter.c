
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_size; int i_blocks; int i_sb; int i_ctime; int i_mtime; } ;
struct file {int dummy; } ;
struct coda_file_info {int cfi_access_intent; struct file* cfi_container; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 int CODA_ACCESS_TYPE_WRITE ;
 int CODA_ACCESS_TYPE_WRITE_FINISH ;
 struct coda_file_info* coda_ftoc (struct file*) ;
 int coda_i2f (struct inode*) ;
 int current_time (struct inode*) ;
 int file_end_write (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int file_start_write (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ venus_access_intent (int ,int ,int *,size_t,int ,int ) ;
 scalar_t__ vfs_iter_write (struct file*,struct iov_iter*,int *,int ) ;

__attribute__((used)) static ssize_t
coda_file_write_iter(struct kiocb *iocb, struct iov_iter *to)
{
 struct file *coda_file = iocb->ki_filp;
 struct inode *coda_inode = file_inode(coda_file);
 struct coda_file_info *cfi = coda_ftoc(coda_file);
 struct file *host_file = cfi->cfi_container;
 loff_t ki_pos = iocb->ki_pos;
 size_t count = iov_iter_count(to);
 ssize_t ret;

 ret = venus_access_intent(coda_inode->i_sb, coda_i2f(coda_inode),
      &cfi->cfi_access_intent,
      count, ki_pos, CODA_ACCESS_TYPE_WRITE);
 if (ret)
  goto finish_write;

 file_start_write(host_file);
 inode_lock(coda_inode);
 ret = vfs_iter_write(cfi->cfi_container, to, &iocb->ki_pos, 0);
 coda_inode->i_size = file_inode(host_file)->i_size;
 coda_inode->i_blocks = (coda_inode->i_size + 511) >> 9;
 coda_inode->i_mtime = coda_inode->i_ctime = current_time(coda_inode);
 inode_unlock(coda_inode);
 file_end_write(host_file);

finish_write:
 venus_access_intent(coda_inode->i_sb, coda_i2f(coda_inode),
       &cfi->cfi_access_intent,
       count, ki_pos, CODA_ACCESS_TYPE_WRITE_FINISH);
 return ret;
}
