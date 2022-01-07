
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdns3 {int dr_mode; int role; struct device* dev; } ;
typedef enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;


 int CONFIG_USB_CDNS3_GADGET ;
 int CONFIG_USB_CDNS3_HOST ;
 int EINVAL ;
 scalar_t__ IS_ENABLED (int ) ;



 int USB_DR_MODE_UNKNOWN ;
 int USB_ROLE_DEVICE ;
 int USB_ROLE_HOST ;
 int USB_ROLE_NONE ;
 int cdns3_drd_update_mode (struct cdns3*) ;
 int cdns3_exit_roles (struct cdns3*) ;
 int cdns3_gadget_init (struct cdns3*) ;
 int cdns3_host_init (struct cdns3*) ;
 int cdns3_hw_role_switch (struct cdns3*) ;
 int cdns3_idle_init (struct cdns3*) ;
 int cdns3_role_start (struct cdns3*,int ) ;
 int dev_err (struct device*,char*,...) ;
 int usb_get_dr_mode (struct device*) ;

__attribute__((used)) static int cdns3_core_init_role(struct cdns3 *cdns)
{
 struct device *dev = cdns->dev;
 enum usb_dr_mode best_dr_mode;
 enum usb_dr_mode dr_mode;
 int ret = 0;

 dr_mode = usb_get_dr_mode(dev);
 cdns->role = USB_ROLE_NONE;






 if (dr_mode == USB_DR_MODE_UNKNOWN) {
  if (IS_ENABLED(CONFIG_USB_CDNS3_HOST) &&
      IS_ENABLED(CONFIG_USB_CDNS3_GADGET))
   dr_mode = 129;
  else if (IS_ENABLED(CONFIG_USB_CDNS3_HOST))
   dr_mode = 130;
  else if (IS_ENABLED(CONFIG_USB_CDNS3_GADGET))
   dr_mode = 128;
 }





 best_dr_mode = cdns->dr_mode;

 ret = cdns3_idle_init(cdns);
 if (ret)
  return ret;

 if (dr_mode == 129) {
  best_dr_mode = cdns->dr_mode;
 } else if (cdns->dr_mode == 129) {
  best_dr_mode = dr_mode;
 } else if (cdns->dr_mode != dr_mode) {
  dev_err(dev, "Incorrect DRD configuration\n");
  return -EINVAL;
 }

 dr_mode = best_dr_mode;

 if (dr_mode == 129 || dr_mode == 130) {
  ret = cdns3_host_init(cdns);
  if (ret) {
   dev_err(dev, "Host initialization failed with %d\n",
    ret);
   goto err;
  }
 }

 if (dr_mode == 129 || dr_mode == 128) {
  ret = cdns3_gadget_init(cdns);
  if (ret) {
   dev_err(dev, "Device initialization failed with %d\n",
    ret);
   goto err;
  }
 }

 cdns->dr_mode = dr_mode;

 ret = cdns3_drd_update_mode(cdns);
 if (ret)
  goto err;


 ret = cdns3_role_start(cdns, USB_ROLE_NONE);
 if (ret)
  goto err;

 switch (cdns->dr_mode) {
 case 129:
  ret = cdns3_hw_role_switch(cdns);
  if (ret)
   goto err;
  break;
 case 128:
  ret = cdns3_role_start(cdns, USB_ROLE_DEVICE);
  if (ret)
   goto err;
  break;
 case 130:
  ret = cdns3_role_start(cdns, USB_ROLE_HOST);
  if (ret)
   goto err;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }

 return ret;
err:
 cdns3_exit_roles(cdns);
 return ret;
}
