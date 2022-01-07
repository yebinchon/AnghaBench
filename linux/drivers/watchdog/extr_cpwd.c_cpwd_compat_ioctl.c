
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 scalar_t__ compat_ptr (unsigned long) ;
 long cpwd_ioctl (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long cpwd_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 return cpwd_ioctl(file, cmd, (unsigned long)compat_ptr(arg));
}
