
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct usb_ctrlrequest {scalar_t__ wValue; } ;
struct mv_udc {int usb_state; scalar_t__ dev_addr; } ;


 int EP_DIR_IN ;
 int USB_STATE_ADDRESS ;
 int ep0_stall (struct mv_udc*) ;
 scalar_t__ udc_prime_status (struct mv_udc*,int ,int ,int) ;

__attribute__((used)) static void ch9setaddress(struct mv_udc *udc, struct usb_ctrlrequest *setup)
{
 udc->dev_addr = (u8)setup->wValue;


 udc->usb_state = USB_STATE_ADDRESS;

 if (udc_prime_status(udc, EP_DIR_IN, 0, 1))
  ep0_stall(udc);
}
