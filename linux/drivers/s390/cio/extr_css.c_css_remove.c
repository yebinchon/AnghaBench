
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {TYPE_1__* driver; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* remove ) (struct subchannel*) ;} ;


 int stub1 (struct subchannel*) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static int css_remove(struct device *dev)
{
 struct subchannel *sch;
 int ret;

 sch = to_subchannel(dev);
 ret = sch->driver->remove ? sch->driver->remove(sch) : 0;
 sch->driver = ((void*)0);
 return ret;
}
