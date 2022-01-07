
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cont_reading_from_srcdev_mode; scalar_t__ srcdevid; char* srcdev_name; char* tgtdev_name; } ;
struct btrfs_ioctl_dev_replace_args {int result; TYPE_1__ start; } ;
struct btrfs_fs_info {int dummy; } ;




 int BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR ;
 int BTRFS_IOCTL_DEV_REPLACE_RESULT_SCRUB_INPROGRESS ;
 int EINVAL ;
 int btrfs_dev_replace_start (struct btrfs_fs_info*,char*,scalar_t__,char*,int) ;

int btrfs_dev_replace_by_ioctl(struct btrfs_fs_info *fs_info,
       struct btrfs_ioctl_dev_replace_args *args)
{
 int ret;

 switch (args->start.cont_reading_from_srcdev_mode) {
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 if ((args->start.srcdevid == 0 && args->start.srcdev_name[0] == '\0') ||
     args->start.tgtdev_name[0] == '\0')
  return -EINVAL;

 ret = btrfs_dev_replace_start(fs_info, args->start.tgtdev_name,
     args->start.srcdevid,
     args->start.srcdev_name,
     args->start.cont_reading_from_srcdev_mode);
 args->result = ret;

 if (ret == BTRFS_IOCTL_DEV_REPLACE_RESULT_SCRUB_INPROGRESS ||
     ret == BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR)
  return 0;

 return ret;
}
