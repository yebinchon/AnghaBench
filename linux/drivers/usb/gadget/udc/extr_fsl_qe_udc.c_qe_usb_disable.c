
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qe_udc {TYPE_1__* usb_regs; } ;
struct TYPE_2__ {int usb_usmod; } ;


 int USB_MODE_EN ;
 int clrbits8 (int *,int ) ;

__attribute__((used)) static inline void qe_usb_disable(struct qe_udc *udc)
{
 clrbits8(&udc->usb_regs->usb_usmod, USB_MODE_EN);
}
