
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* ioctl ) (struct watchdog_device*,unsigned int,unsigned long) ;} ;


 int ENOIOCTLCMD ;
 int stub1 (struct watchdog_device*,unsigned int,unsigned long) ;

__attribute__((used)) static int watchdog_ioctl_op(struct watchdog_device *wdd, unsigned int cmd,
       unsigned long arg)
{
 if (!wdd->ops->ioctl)
  return -ENOIOCTLCMD;

 return wdd->ops->ioctl(wdd, cmd, arg);
}
