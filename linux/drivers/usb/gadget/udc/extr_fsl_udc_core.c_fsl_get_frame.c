
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int frindex; } ;


 int USB_FRINDEX_MASKS ;
 TYPE_1__* dr_regs ;
 int fsl_readl (int *) ;

__attribute__((used)) static int fsl_get_frame(struct usb_gadget *gadget)
{
 return (int)(fsl_readl(&dr_regs->frindex) & USB_FRINDEX_MASKS);
}
