
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned int (* get_timeleft ) (struct watchdog_device*) ;} ;


 int EOPNOTSUPP ;
 unsigned int stub1 (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_get_timeleft(struct watchdog_device *wdd,
       unsigned int *timeleft)
{
 *timeleft = 0;

 if (!wdd->ops->get_timeleft)
  return -EOPNOTSUPP;

 *timeleft = wdd->ops->get_timeleft(wdd);

 return 0;
}
