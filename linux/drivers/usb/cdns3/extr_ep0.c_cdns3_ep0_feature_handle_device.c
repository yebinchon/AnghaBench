
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct usb_ctrlrequest {int wIndex; int wValue; } ;
struct TYPE_3__ {int state; int speed; } ;
struct cdns3_device {int wake_up_flag; int u1_allowed; int u2_allowed; TYPE_2__* regs; TYPE_1__ gadget; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_4__ {int usb_cmd; } ;


 int EINVAL ;




 int USB_CMD_STMODE ;





 int USB_SPEED_HIGH ;
 int USB_SPEED_SUPER ;
 int USB_STATE_CONFIGURED ;
 int USB_STS_TMODE_SEL (int ) ;
 int cdns3_ep0_complete_setup (struct cdns3_device*,int ,int) ;
 int cdns3_set_register_bit (int *,int) ;
 int le16_to_cpu (int ) ;
 int mdelay (int) ;

__attribute__((used)) static int cdns3_ep0_feature_handle_device(struct cdns3_device *priv_dev,
        struct usb_ctrlrequest *ctrl,
        int set)
{
 enum usb_device_state state;
 enum usb_device_speed speed;
 int ret = 0;
 u32 wValue;
 u16 tmode;

 wValue = le16_to_cpu(ctrl->wValue);
 state = priv_dev->gadget.state;
 speed = priv_dev->gadget.speed;

 switch (wValue) {
 case 131:
  priv_dev->wake_up_flag = !!set;
  break;
 case 129:
  if (state != USB_STATE_CONFIGURED || speed != USB_SPEED_SUPER)
   return -EINVAL;

  priv_dev->u1_allowed = !!set;
  break;
 case 128:
  if (state != USB_STATE_CONFIGURED || speed != USB_SPEED_SUPER)
   return -EINVAL;

  priv_dev->u2_allowed = !!set;
  break;
 case 132:
  ret = -EINVAL;
  break;
 case 130:
  if (state != USB_STATE_CONFIGURED || speed > USB_SPEED_HIGH)
   return -EINVAL;

  tmode = le16_to_cpu(ctrl->wIndex);

  if (!set || (tmode & 0xff) != 0)
   return -EINVAL;

  switch (tmode >> 8) {
  case 136:
  case 135:
  case 133:
  case 134:
   cdns3_ep0_complete_setup(priv_dev, 0, 1);





   mdelay(1);
   cdns3_set_register_bit(&priv_dev->regs->usb_cmd,
            USB_CMD_STMODE |
            USB_STS_TMODE_SEL(tmode - 1));
   break;
  default:
   ret = -EINVAL;
  }
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
