
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device* parent; } ;
struct tegra_vde {scalar_t__ bsev; TYPE_1__ miscdev; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 int BSE_DMA_BUSY ;
 int BSE_ICMDQUE_EMPTY ;
 scalar_t__ INTR_STATUS ;
 int dev_err (struct device*,char*) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int tegra_vde_wait_bsev(struct tegra_vde *vde, bool wait_dma)
{
 struct device *dev = vde->miscdev.parent;
 u32 value;
 int err;

 err = readl_relaxed_poll_timeout(vde->bsev + INTR_STATUS, value,
      !(value & BIT(2)), 1, 100);
 if (err) {
  dev_err(dev, "BSEV unknown bit timeout\n");
  return err;
 }

 err = readl_relaxed_poll_timeout(vde->bsev + INTR_STATUS, value,
      (value & BSE_ICMDQUE_EMPTY), 1, 100);
 if (err) {
  dev_err(dev, "BSEV ICMDQUE flush timeout\n");
  return err;
 }

 if (!wait_dma)
  return 0;

 err = readl_relaxed_poll_timeout(vde->bsev + INTR_STATUS, value,
      !(value & BSE_DMA_BUSY), 1, 100);
 if (err) {
  dev_err(dev, "BSEV DMA timeout\n");
  return err;
 }

 return 0;
}
