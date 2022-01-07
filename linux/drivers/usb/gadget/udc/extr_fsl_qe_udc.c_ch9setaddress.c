
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct qe_udc {int usb_state; scalar_t__ device_address; } ;


 int USB_DIR_IN ;
 int USB_STATE_ADDRESS ;
 scalar_t__ ep0_prime_status (struct qe_udc*,int ) ;
 int qe_ep0_stall (struct qe_udc*) ;

__attribute__((used)) static void ch9setaddress(struct qe_udc *udc, u16 value, u16 index,
   u16 length)
{

 udc->device_address = (u8) value;

 udc->usb_state = USB_STATE_ADDRESS;


 if (ep0_prime_status(udc, USB_DIR_IN))
  qe_ep0_stall(udc);
}
