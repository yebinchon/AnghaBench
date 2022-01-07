
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct musb {int mregs; } ;


 int MUSB_FRAME ;
 struct musb* gadget_to_musb (struct usb_gadget*) ;
 scalar_t__ musb_readw (int ,int ) ;

__attribute__((used)) static int musb_gadget_get_frame(struct usb_gadget *gadget)
{
 struct musb *musb = gadget_to_musb(gadget);

 return (int)musb_readw(musb->mregs, MUSB_FRAME);
}
