
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_pos; struct ashmem_area* private_data; } ;
struct ashmem_area {scalar_t__ size; TYPE_1__* file; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int f_pos; } ;


 scalar_t__ EBADF ;
 scalar_t__ EINVAL ;
 int ashmem_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ vfs_llseek (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static loff_t ashmem_llseek(struct file *file, loff_t offset, int origin)
{
 struct ashmem_area *asma = file->private_data;
 loff_t ret;

 mutex_lock(&ashmem_mutex);

 if (asma->size == 0) {
  mutex_unlock(&ashmem_mutex);
  return -EINVAL;
 }

 if (!asma->file) {
  mutex_unlock(&ashmem_mutex);
  return -EBADF;
 }

 mutex_unlock(&ashmem_mutex);

 ret = vfs_llseek(asma->file, offset, origin);
 if (ret < 0)
  return ret;


 file->f_pos = asma->file->f_pos;
 return ret;
}
