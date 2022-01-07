
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NVME_IOCTL_ADMIN64_CMD ;
 unsigned int NVME_IOCTL_ADMIN_CMD ;
 scalar_t__ is_sed_ioctl (unsigned int) ;

__attribute__((used)) static bool is_ctrl_ioctl(unsigned int cmd)
{
 if (cmd == NVME_IOCTL_ADMIN_CMD || cmd == NVME_IOCTL_ADMIN64_CMD)
  return 1;
 if (is_sed_ioctl(cmd))
  return 1;
 return 0;
}
