
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel_id {int dummy; } ;
struct subchannel {struct subchannel_id schid; } ;
struct TYPE_2__ {int parent; } ;
struct ccw_device {TYPE_1__ dev; } ;


 struct subchannel* to_subchannel (int ) ;

void ccw_device_get_schid(struct ccw_device *cdev, struct subchannel_id *schid)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);

 *schid = sch->schid;
}
