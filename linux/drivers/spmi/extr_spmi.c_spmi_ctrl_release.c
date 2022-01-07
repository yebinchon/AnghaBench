
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_controller {int nr; } ;
struct device {int dummy; } ;


 int ctrl_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct spmi_controller*) ;
 struct spmi_controller* to_spmi_controller (struct device*) ;

__attribute__((used)) static void spmi_ctrl_release(struct device *dev)
{
 struct spmi_controller *ctrl = to_spmi_controller(dev);
 ida_simple_remove(&ctrl_ida, ctrl->nr);
 kfree(ctrl);
}
