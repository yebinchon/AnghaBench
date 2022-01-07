
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int dummy; } ;
struct dax_device {int dummy; } ;
typedef int pgoff_t ;


 size_t copy_from_iter (void*,size_t,struct iov_iter*) ;

__attribute__((used)) static size_t dcssblk_dax_copy_from_iter(struct dax_device *dax_dev,
  pgoff_t pgoff, void *addr, size_t bytes, struct iov_iter *i)
{
 return copy_from_iter(addr, bytes, i);
}
