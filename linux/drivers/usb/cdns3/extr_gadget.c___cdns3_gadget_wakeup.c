
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3_device {TYPE_1__* regs; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {int usb_conf; } ;


 int USB_CONF_LGO_L0 ;
 int USB_SPEED_SUPER ;
 int cdns3_get_speed (struct cdns3_device*) ;
 int writel (int ,int *) ;

int __cdns3_gadget_wakeup(struct cdns3_device *priv_dev)
{
 enum usb_device_speed speed;

 speed = cdns3_get_speed(priv_dev);

 if (speed >= USB_SPEED_SUPER)
  return 0;


 writel(USB_CONF_LGO_L0, &priv_dev->regs->usb_conf);

 return 0;
}
