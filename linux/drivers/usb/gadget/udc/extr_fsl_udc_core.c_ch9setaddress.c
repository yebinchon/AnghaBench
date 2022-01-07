
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct fsl_udc {int usb_state; scalar_t__ device_address; } ;


 int EP_DIR_IN ;
 int USB_STATE_ADDRESS ;
 scalar_t__ ep0_prime_status (struct fsl_udc*,int ) ;
 int ep0stall (struct fsl_udc*) ;

__attribute__((used)) static void ch9setaddress(struct fsl_udc *udc, u16 value, u16 index, u16 length)
{

 udc->device_address = (u8) value;

 udc->usb_state = USB_STATE_ADDRESS;

 if (ep0_prime_status(udc, EP_DIR_IN))
  ep0stall(udc);
}
