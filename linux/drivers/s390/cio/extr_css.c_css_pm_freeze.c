
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct subchannel {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct css_driver {int (* freeze ) (struct subchannel*) ;} ;


 int stub1 (struct subchannel*) ;
 struct css_driver* to_cssdriver (int ) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static int css_pm_freeze(struct device *dev)
{
 struct subchannel *sch = to_subchannel(dev);
 struct css_driver *drv;

 if (!sch->dev.driver)
  return 0;
 drv = to_cssdriver(sch->dev.driver);
 return drv->freeze ? drv->freeze(sch) : 0;
}
