
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct advk_pcie {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int ETIMEDOUT ;
 int PIO_ISR ;
 int PIO_START ;
 int PIO_TIMEOUT_MS ;
 scalar_t__ advk_readl (struct advk_pcie*,int ) ;
 int dev_err (struct device*,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int advk_pcie_wait_pio(struct advk_pcie *pcie)
{
 struct device *dev = &pcie->pdev->dev;
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(PIO_TIMEOUT_MS);

 while (time_before(jiffies, timeout)) {
  u32 start, isr;

  start = advk_readl(pcie, PIO_START);
  isr = advk_readl(pcie, PIO_ISR);
  if (!start && isr)
   return 0;
 }

 dev_err(dev, "config read/write timed out\n");
 return -ETIMEDOUT;
}
