
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct autofs_sb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ token; } ;
struct autofs_dev_ioctl {TYPE_1__ ready; } ;
typedef scalar_t__ autofs_wqt_t ;


 int autofs_wait_release (struct autofs_sb_info*,scalar_t__,int ) ;

__attribute__((used)) static int autofs_dev_ioctl_ready(struct file *fp,
      struct autofs_sb_info *sbi,
      struct autofs_dev_ioctl *param)
{
 autofs_wqt_t token;

 token = (autofs_wqt_t) param->ready.token;
 return autofs_wait_release(sbi, token, 0);
}
