
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct autofs_sb_info {int version; } ;
struct TYPE_2__ {int version; } ;
struct autofs_dev_ioctl {TYPE_1__ protover; } ;



__attribute__((used)) static int autofs_dev_ioctl_protover(struct file *fp,
         struct autofs_sb_info *sbi,
         struct autofs_dev_ioctl *param)
{
 param->protover.version = sbi->version;
 return 0;
}
