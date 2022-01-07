
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_usb {int dummy; } ;


 int REG_INT_MSK_LINE_C ;
 int REG_INT_MSK_STS_C ;
 int TWL6030_CHARGER_CTRL_INT_MASK ;
 int TWL_MODULE_USB ;
 int USB_ID_INT_EN_HI_SET ;
 int twl6030_interrupt_unmask (int,int ) ;
 int twl6030_writeb (struct twl6030_usb*,int ,int,int ) ;

__attribute__((used)) static int twl6030_enable_irq(struct twl6030_usb *twl)
{
 twl6030_writeb(twl, TWL_MODULE_USB, 0x1, USB_ID_INT_EN_HI_SET);
 twl6030_interrupt_unmask(0x05, REG_INT_MSK_LINE_C);
 twl6030_interrupt_unmask(0x05, REG_INT_MSK_STS_C);

 twl6030_interrupt_unmask(TWL6030_CHARGER_CTRL_INT_MASK,
    REG_INT_MSK_LINE_C);
 twl6030_interrupt_unmask(TWL6030_CHARGER_CTRL_INT_MASK,
    REG_INT_MSK_STS_C);

 return 0;
}
