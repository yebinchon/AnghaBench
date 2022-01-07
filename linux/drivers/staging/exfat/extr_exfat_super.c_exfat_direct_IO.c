
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ mmu_private; } ;
struct TYPE_3__ {struct address_space* f_mapping; } ;


 TYPE_2__* EXFAT_I (struct inode*) ;
 int WRITE ;
 scalar_t__ blockdev_direct_IO (struct kiocb*,struct inode*,struct iov_iter*,int ) ;
 int exfat_get_block ;
 int exfat_write_failed (struct address_space*,scalar_t__) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 int iov_iter_rw (struct iov_iter*) ;

__attribute__((used)) static ssize_t exfat_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
{
 struct inode *inode = iocb->ki_filp->f_mapping->host;
 struct address_space *mapping = iocb->ki_filp->f_mapping;
 ssize_t ret;
 int rw;

 rw = iov_iter_rw(iter);

 if (rw == WRITE) {
  if (EXFAT_I(inode)->mmu_private < iov_iter_count(iter))
   return 0;
 }
 ret = blockdev_direct_IO(iocb, inode, iter, exfat_get_block);

 if ((ret < 0) && (rw & WRITE))
  exfat_write_failed(mapping, iov_iter_count(iter));
 return ret;
}
