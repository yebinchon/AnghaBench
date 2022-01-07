
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int usb_conf; } ;


 int USB_CONF_L1DS ;
 int USB_CONF_L1EN ;
 int writel (int ,int *) ;

void cdns3_allow_enable_l1(struct cdns3_device *priv_dev, int enable)
{
 if (enable)
  writel(USB_CONF_L1EN, &priv_dev->regs->usb_conf);
 else
  writel(USB_CONF_L1DS, &priv_dev->regs->usb_conf);
}
