
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct autofs_sb_info {int dummy; } ;
struct TYPE_2__ {int devid; } ;
struct autofs_dev_ioctl {int ioctlfd; char* path; TYPE_1__ openmount; } ;
typedef int dev_t ;


 int EINVAL ;
 int autofs_dev_ioctl_open_mountpoint (char const*,int ) ;
 int new_decode_dev (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int autofs_dev_ioctl_openmount(struct file *fp,
          struct autofs_sb_info *sbi,
          struct autofs_dev_ioctl *param)
{
 const char *path;
 dev_t devid;
 int err, fd;



 if (!param->openmount.devid)
  return -EINVAL;

 param->ioctlfd = -1;

 path = param->path;
 devid = new_decode_dev(param->openmount.devid);

 err = 0;
 fd = autofs_dev_ioctl_open_mountpoint(path, devid);
 if (unlikely(fd < 0)) {
  err = fd;
  goto out;
 }

 param->ioctlfd = fd;
out:
 return err;
}
