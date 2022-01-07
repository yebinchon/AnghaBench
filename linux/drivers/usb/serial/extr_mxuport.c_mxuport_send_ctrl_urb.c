
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_serial {int dummy; } ;


 int mxuport_send_ctrl_data_urb (struct usb_serial*,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int mxuport_send_ctrl_urb(struct usb_serial *serial,
     u8 request, u16 value, u16 index)
{
 return mxuport_send_ctrl_data_urb(serial, request, value, index,
       ((void*)0), 0);
}
