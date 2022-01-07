
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imxdi_dev {TYPE_1__* pdev; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DSR ;
 int DSR_WEF ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void clear_write_error(struct imxdi_dev *imxdi)
{
 int cnt;

 dev_warn(&imxdi->pdev->dev, "WARNING: Register write error!\n");


 writel(DSR_WEF, imxdi->ioaddr + DSR);


 for (cnt = 0; cnt < 1000; cnt++) {
  if ((readl(imxdi->ioaddr + DSR) & DSR_WEF) == 0)
   return;
  udelay(10);
 }
 dev_err(&imxdi->pdev->dev,
   "ERROR: Cannot clear write-error flag!\n");
}
