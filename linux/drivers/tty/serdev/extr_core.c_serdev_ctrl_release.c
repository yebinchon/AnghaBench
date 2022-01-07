
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_controller {int nr; } ;
struct device {int dummy; } ;


 int ctrl_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct serdev_controller*) ;
 struct serdev_controller* to_serdev_controller (struct device*) ;

__attribute__((used)) static void serdev_ctrl_release(struct device *dev)
{
 struct serdev_controller *ctrl = to_serdev_controller(dev);
 ida_simple_remove(&ctrl_ida, ctrl->nr);
 kfree(ctrl);
}
