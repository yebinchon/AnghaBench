
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {int ki_pos; TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct ashmem_area {scalar_t__ size; TYPE_2__* file; } ;
typedef int ssize_t ;
struct TYPE_4__ {int f_pos; } ;
struct TYPE_3__ {struct ashmem_area* private_data; } ;


 int EBADF ;
 int ashmem_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfs_iter_read (TYPE_2__*,struct iov_iter*,int *,int ) ;

__attribute__((used)) static ssize_t ashmem_read_iter(struct kiocb *iocb, struct iov_iter *iter)
{
 struct ashmem_area *asma = iocb->ki_filp->private_data;
 int ret = 0;

 mutex_lock(&ashmem_mutex);


 if (asma->size == 0)
  goto out_unlock;

 if (!asma->file) {
  ret = -EBADF;
  goto out_unlock;
 }







 mutex_unlock(&ashmem_mutex);
 ret = vfs_iter_read(asma->file, iter, &iocb->ki_pos, 0);
 mutex_lock(&ashmem_mutex);
 if (ret > 0)
  asma->file->f_pos = iocb->ki_pos;
out_unlock:
 mutex_unlock(&ashmem_mutex);
 return ret;
}
