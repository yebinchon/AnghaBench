
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {int USB_STATUS; } ;


 int HIGH_SPEED ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int _nbu2ss_readl (int *) ;

__attribute__((used)) static inline enum usb_device_speed _nbu2ss_get_speed(struct nbu2ss_udc *udc)
{
 u32 data;
 enum usb_device_speed speed = USB_SPEED_FULL;

 data = _nbu2ss_readl(&udc->p_regs->USB_STATUS);
 if (data & HIGH_SPEED)
  speed = USB_SPEED_HIGH;

 return speed;
}
