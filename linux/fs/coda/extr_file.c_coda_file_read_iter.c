
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct coda_file_info {int cfi_access_intent; int cfi_container; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 int CODA_ACCESS_TYPE_READ ;
 int CODA_ACCESS_TYPE_READ_FINISH ;
 struct coda_file_info* coda_ftoc (struct file*) ;
 int coda_i2f (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ venus_access_intent (int ,int ,int *,size_t,int ,int ) ;
 scalar_t__ vfs_iter_read (int ,struct iov_iter*,int *,int ) ;

__attribute__((used)) static ssize_t
coda_file_read_iter(struct kiocb *iocb, struct iov_iter *to)
{
 struct file *coda_file = iocb->ki_filp;
 struct inode *coda_inode = file_inode(coda_file);
 struct coda_file_info *cfi = coda_ftoc(coda_file);
 loff_t ki_pos = iocb->ki_pos;
 size_t count = iov_iter_count(to);
 ssize_t ret;

 ret = venus_access_intent(coda_inode->i_sb, coda_i2f(coda_inode),
      &cfi->cfi_access_intent,
      count, ki_pos, CODA_ACCESS_TYPE_READ);
 if (ret)
  goto finish_read;

 ret = vfs_iter_read(cfi->cfi_container, to, &iocb->ki_pos, 0);

finish_read:
 venus_access_intent(coda_inode->i_sb, coda_i2f(coda_inode),
       &cfi->cfi_access_intent,
       count, ki_pos, CODA_ACCESS_TYPE_READ_FINISH);
 return ret;
}
