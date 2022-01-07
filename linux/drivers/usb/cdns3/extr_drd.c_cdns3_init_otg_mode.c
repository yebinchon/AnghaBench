
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3 {TYPE_1__* otg_regs; } ;
struct TYPE_2__ {int ivect; } ;


 int USB_DR_MODE_OTG ;
 int cdns3_otg_disable_irq (struct cdns3*) ;
 int cdns3_otg_enable_irq (struct cdns3*) ;
 int cdns3_set_mode (struct cdns3*,int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static int cdns3_init_otg_mode(struct cdns3 *cdns)
{
 int ret = 0;

 cdns3_otg_disable_irq(cdns);

 writel(~0, &cdns->otg_regs->ivect);

 ret = cdns3_set_mode(cdns, USB_DR_MODE_OTG);
 if (ret)
  return ret;

 cdns3_otg_enable_irq(cdns);
 return ret;
}
