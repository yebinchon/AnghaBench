
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ intparm; } ;
struct subchannel {struct subchannel* lock; struct subchannel* driver_override; TYPE_1__ config; } ;
struct device {int dummy; } ;


 int cio_commit_config (struct subchannel*) ;
 int kfree (struct subchannel*) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static void css_subchannel_release(struct device *dev)
{
 struct subchannel *sch = to_subchannel(dev);

 sch->config.intparm = 0;
 cio_commit_config(sch);
 kfree(sch->driver_override);
 kfree(sch->lock);
 kfree(sch);
}
