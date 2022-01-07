
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int schid; } ;
struct TYPE_2__ {int parent; } ;
struct ccw_device {TYPE_1__ dev; } ;


 int chsc_siosl (int ) ;
 struct subchannel* to_subchannel (int ) ;

int ccw_device_siosl(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);

 return chsc_siosl(sch->schid);
}
