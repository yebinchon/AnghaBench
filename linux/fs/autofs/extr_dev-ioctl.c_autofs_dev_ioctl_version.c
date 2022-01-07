
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct autofs_sb_info {int dummy; } ;
struct autofs_dev_ioctl {int ver_minor; int ver_major; } ;


 int AUTOFS_DEV_IOCTL_VERSION_MAJOR ;
 int AUTOFS_DEV_IOCTL_VERSION_MINOR ;

__attribute__((used)) static int autofs_dev_ioctl_version(struct file *fp,
        struct autofs_sb_info *sbi,
        struct autofs_dev_ioctl *param)
{

 param->ver_major = AUTOFS_DEV_IOCTL_VERSION_MAJOR;
 param->ver_minor = AUTOFS_DEV_IOCTL_VERSION_MINOR;
 return 0;
}
