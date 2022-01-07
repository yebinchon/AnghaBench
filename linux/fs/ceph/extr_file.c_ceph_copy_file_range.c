
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EOPNOTSUPP ;
 int EXDEV ;
 int __ceph_copy_file_range (struct file*,int ,struct file*,int ,size_t,unsigned int) ;
 int generic_copy_file_range (struct file*,int ,struct file*,int ,size_t,unsigned int) ;

__attribute__((used)) static ssize_t ceph_copy_file_range(struct file *src_file, loff_t src_off,
        struct file *dst_file, loff_t dst_off,
        size_t len, unsigned int flags)
{
 ssize_t ret;

 ret = __ceph_copy_file_range(src_file, src_off, dst_file, dst_off,
         len, flags);

 if (ret == -EOPNOTSUPP || ret == -EXDEV)
  ret = generic_copy_file_range(src_file, src_off, dst_file,
           dst_off, len, flags);
 return ret;
}
