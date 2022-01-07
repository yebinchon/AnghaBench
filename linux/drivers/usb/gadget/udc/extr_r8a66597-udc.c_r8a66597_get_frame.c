
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct r8a66597 {int dummy; } ;


 int FRMNUM ;
 struct r8a66597* gadget_to_r8a66597 (struct usb_gadget*) ;
 int r8a66597_read (struct r8a66597*,int ) ;

__attribute__((used)) static int r8a66597_get_frame(struct usb_gadget *_gadget)
{
 struct r8a66597 *r8a66597 = gadget_to_r8a66597(_gadget);
 return r8a66597_read(r8a66597, FRMNUM) & 0x03FF;
}
