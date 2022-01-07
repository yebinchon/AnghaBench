
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi2_dev {scalar_t__ base; } ;


 scalar_t__ CSI2_DPHY_RSTZ ;
 scalar_t__ CSI2_PHY_SHUTDOWNZ ;
 scalar_t__ CSI2_RESETN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void csi2_enable(struct csi2_dev *csi2, bool enable)
{
 if (enable) {
  writel(0x1, csi2->base + CSI2_PHY_SHUTDOWNZ);
  writel(0x1, csi2->base + CSI2_DPHY_RSTZ);
  writel(0x1, csi2->base + CSI2_RESETN);
 } else {
  writel(0x0, csi2->base + CSI2_PHY_SHUTDOWNZ);
  writel(0x0, csi2->base + CSI2_DPHY_RSTZ);
  writel(0x0, csi2->base + CSI2_RESETN);
 }
}
