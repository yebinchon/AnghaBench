
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asm9260_wdt_priv {scalar_t__ mode; int dev; scalar_t__ iobase; } ;
typedef int irqreturn_t ;


 int BM_MOD_WDINT ;
 scalar_t__ DEBUG ;
 scalar_t__ HW_WDMOD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int asm9260_wdt_sys_reset (struct asm9260_wdt_priv*) ;
 int dev_info (int ,char*) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static irqreturn_t asm9260_wdt_irq(int irq, void *devid)
{
 struct asm9260_wdt_priv *priv = devid;
 u32 stat;

 stat = ioread32(priv->iobase + HW_WDMOD);
 if (!(stat & BM_MOD_WDINT))
  return IRQ_NONE;

 if (priv->mode == DEBUG) {
  dev_info(priv->dev, "Watchdog Timeout. Do nothing.\n");
 } else {
  dev_info(priv->dev, "Watchdog Timeout. Doing SW Reset.\n");
  asm9260_wdt_sys_reset(priv);
 }

 return IRQ_HANDLED;
}
