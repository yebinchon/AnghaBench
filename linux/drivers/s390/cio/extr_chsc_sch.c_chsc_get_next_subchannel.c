
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int drv; } ;


 TYPE_1__ chsc_subchannel_driver ;
 int chsc_subchannel_match_next_free ;
 struct device* driver_find_device (int *,int *,int *,int ) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static struct subchannel *chsc_get_next_subchannel(struct subchannel *sch)
{
 struct device *dev;

 dev = driver_find_device(&chsc_subchannel_driver.drv,
     sch ? &sch->dev : ((void*)0), ((void*)0),
     chsc_subchannel_match_next_free);
 return dev ? to_subchannel(dev) : ((void*)0);
}
