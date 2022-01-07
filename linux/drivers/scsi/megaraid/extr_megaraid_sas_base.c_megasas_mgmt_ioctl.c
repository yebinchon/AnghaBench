
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOTTY ;


 long megasas_mgmt_ioctl_aen (struct file*,unsigned long) ;
 long megasas_mgmt_ioctl_fw (struct file*,unsigned long) ;

__attribute__((used)) static long
megasas_mgmt_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 switch (cmd) {
 case 129:
  return megasas_mgmt_ioctl_fw(file, arg);

 case 128:
  return megasas_mgmt_ioctl_aen(file, arg);
 }

 return -ENOTTY;
}
