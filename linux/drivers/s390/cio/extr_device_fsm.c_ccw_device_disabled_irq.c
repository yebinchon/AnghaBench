
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct ccw_device {TYPE_1__ dev; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;


 int cio_disable_subchannel (struct subchannel*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void ccw_device_disabled_irq(struct ccw_device *cdev,
        enum dev_event dev_event)
{
 struct subchannel *sch;

 sch = to_subchannel(cdev->dev.parent);




 cio_disable_subchannel(sch);
}
