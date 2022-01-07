
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cdns3 {scalar_t__ dr_mode; TYPE_1__* otg_regs; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ivect; } ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int OTGIEN_ID_CHANGE_INT ;
 int OTGIEN_VBUSVALID_FALL_INT ;
 int OTGIEN_VBUSVALID_RISE_INT ;
 scalar_t__ USB_DR_MODE_OTG ;
 int cdns3_get_id (struct cdns3*) ;
 int cdns3_get_vbus (struct cdns3*) ;
 int dev_dbg (int ,char*,int ) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static irqreturn_t cdns3_drd_irq(int irq, void *data)
{
 irqreturn_t ret = IRQ_NONE;
 struct cdns3 *cdns = data;
 u32 reg;

 if (cdns->dr_mode != USB_DR_MODE_OTG)
  return ret;

 reg = readl(&cdns->otg_regs->ivect);

 if (!reg)
  return ret;

 if (reg & OTGIEN_ID_CHANGE_INT) {
  dev_dbg(cdns->dev, "OTG IRQ: new ID: %d\n",
   cdns3_get_id(cdns));

  ret = IRQ_WAKE_THREAD;
 }

 if (reg & (OTGIEN_VBUSVALID_RISE_INT | OTGIEN_VBUSVALID_FALL_INT)) {
  dev_dbg(cdns->dev, "OTG IRQ: new VBUS: %d\n",
   cdns3_get_vbus(cdns));

  ret = IRQ_WAKE_THREAD;
 }

 writel(~0, &cdns->otg_regs->ivect);
 return ret;
}
