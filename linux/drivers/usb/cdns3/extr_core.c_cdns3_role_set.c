
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdns3 {int role_override; scalar_t__ dr_mode; int role; int dev; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 int EPERM ;
 scalar_t__ USB_DR_MODE_HOST ;
 scalar_t__ USB_DR_MODE_OTG ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;



 int cdns3_hw_role_switch (struct cdns3*) ;
 int cdns3_role_start (struct cdns3*,int) ;
 int cdns3_role_stop (struct cdns3*) ;
 int dev_err (int ,char*,int) ;
 struct cdns3* dev_get_drvdata (struct device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int cdns3_role_set(struct device *dev, enum usb_role role)
{
 struct cdns3 *cdns = dev_get_drvdata(dev);
 int ret = 0;

 pm_runtime_get_sync(cdns->dev);
 if (role == 128)
  cdns->role_override = 0;
 else
  cdns->role_override = 1;





 if (!cdns->role_override && cdns->dr_mode == USB_DR_MODE_OTG) {
  cdns3_hw_role_switch(cdns);
  goto pm_put;
 }

 if (cdns->role == role)
  goto pm_put;

 if (cdns->dr_mode == USB_DR_MODE_HOST) {
  switch (role) {
  case 128:
  case 129:
   break;
  default:
   ret = -EPERM;
   goto pm_put;
  }
 }

 if (cdns->dr_mode == USB_DR_MODE_PERIPHERAL) {
  switch (role) {
  case 128:
  case 130:
   break;
  default:
   ret = -EPERM;
   goto pm_put;
  }
 }

 cdns3_role_stop(cdns);
 ret = cdns3_role_start(cdns, role);
 if (ret) {
  dev_err(cdns->dev, "set role %d has failed\n", role);
  ret = -EPERM;
 }

pm_put:
 pm_runtime_put_sync(cdns->dev);
 return ret;
}
