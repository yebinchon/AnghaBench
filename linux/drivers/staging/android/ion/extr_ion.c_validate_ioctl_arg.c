
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reserved2; int reserved1; int reserved0; } ;
union ion_ioctl_arg {TYPE_1__ query; } ;


 int EINVAL ;


__attribute__((used)) static int validate_ioctl_arg(unsigned int cmd, union ion_ioctl_arg *arg)
{
 switch (cmd) {
 case 128:
  if (arg->query.reserved0 ||
      arg->query.reserved1 ||
      arg->query.reserved2)
   return -EINVAL;
  break;
 default:
  break;
 }

 return 0;
}
