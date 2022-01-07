
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int TW_IOCTL_ERROR_OS_ENODEV ;
 int capable (int ) ;
 unsigned int iminor (struct inode*) ;
 unsigned int twa_device_extension_count ;

__attribute__((used)) static int twa_chrdev_open(struct inode *inode, struct file *file)
{
 unsigned int minor_number;
 int retval = TW_IOCTL_ERROR_OS_ENODEV;

 if (!capable(CAP_SYS_ADMIN)) {
  retval = -EACCES;
  goto out;
 }

 minor_number = iminor(inode);
 if (minor_number >= twa_device_extension_count)
  goto out;
 retval = 0;
out:
 return retval;
}
