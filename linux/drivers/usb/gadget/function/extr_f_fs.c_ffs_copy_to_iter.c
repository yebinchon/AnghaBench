
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int dummy; } ;
typedef int ssize_t ;


 int EFAULT ;
 int copy_to_iter (void*,int,struct iov_iter*) ;
 int iov_iter_count (struct iov_iter*) ;
 scalar_t__ likely (int) ;
 int pr_err (char*,int,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t ffs_copy_to_iter(void *data, int data_len, struct iov_iter *iter)
{
 ssize_t ret = copy_to_iter(data, data_len, iter);
 if (likely(ret == data_len))
  return ret;

 if (unlikely(iov_iter_count(iter)))
  return -EFAULT;
 pr_err("functionfs read size %d > requested size %zd, dropping excess data. "
        "Align read buffer size to max packet size to avoid the problem.\n",
        data_len, ret);

 return ret;
}
