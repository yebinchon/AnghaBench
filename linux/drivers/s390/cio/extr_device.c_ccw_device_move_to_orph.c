
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct subchannel {TYPE_2__ dev; } ;
struct channel_subsystem {int pseudo_subchannel; } ;
struct TYPE_3__ {int parent; } ;
struct ccw_device {TYPE_1__ dev; } ;


 int ccw_device_move_to_sch (struct ccw_device*,int ) ;
 struct channel_subsystem* to_css (int ) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static int ccw_device_move_to_orph(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct channel_subsystem *css = to_css(sch->dev.parent);

 return ccw_device_move_to_sch(cdev, css->pseudo_subchannel);
}
