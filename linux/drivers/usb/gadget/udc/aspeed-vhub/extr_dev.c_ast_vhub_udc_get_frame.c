
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct ast_vhub_dev {TYPE_1__* vhub; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ AST_VHUB_USBSTS ;
 int readl (scalar_t__) ;
 struct ast_vhub_dev* to_ast_dev (struct usb_gadget*) ;

__attribute__((used)) static int ast_vhub_udc_get_frame(struct usb_gadget* gadget)
{
 struct ast_vhub_dev *d = to_ast_dev(gadget);

 return (readl(d->vhub->regs + AST_VHUB_USBSTS) >> 16) & 0x7ff;
}
