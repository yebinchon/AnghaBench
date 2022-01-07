
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_controller {int dev; int nr; } ;


 int CONFIG_OF ;
 int EAGAIN ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (int *,char*,int ,int *) ;
 int device_add (int *) ;
 int is_registered ;
 int of_spmi_register_devices (struct spmi_controller*) ;

int spmi_controller_add(struct spmi_controller *ctrl)
{
 int ret;


 if (WARN_ON(!is_registered))
  return -EAGAIN;

 ret = device_add(&ctrl->dev);
 if (ret)
  return ret;

 if (IS_ENABLED(CONFIG_OF))
  of_spmi_register_devices(ctrl);

 dev_dbg(&ctrl->dev, "spmi-%d registered: dev:%p\n",
  ctrl->nr, &ctrl->dev);

 return 0;
}
