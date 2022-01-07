
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_wdt {scalar_t__ reg_base; TYPE_1__* drv_data; int wdt_device; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int quirks; } ;


 int IRQ_HANDLED ;
 int QUIRK_HAS_WTCLRINT_REG ;
 scalar_t__ S3C2410_WTCLRINT ;
 int dev_info (int ,char*) ;
 struct s3c2410_wdt* platform_get_drvdata (void*) ;
 int s3c2410wdt_keepalive (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t s3c2410wdt_irq(int irqno, void *param)
{
 struct s3c2410_wdt *wdt = platform_get_drvdata(param);

 dev_info(wdt->dev, "watchdog timer expired (irq)\n");

 s3c2410wdt_keepalive(&wdt->wdt_device);

 if (wdt->drv_data->quirks & QUIRK_HAS_WTCLRINT_REG)
  writel(0x1, wdt->reg_base + S3C2410_WTCLRINT);

 return IRQ_HANDLED;
}
