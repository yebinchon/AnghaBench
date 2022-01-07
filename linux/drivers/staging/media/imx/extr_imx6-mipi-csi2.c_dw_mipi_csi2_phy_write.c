
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csi2_dev {scalar_t__ base; } ;


 scalar_t__ CSI2_PHY_TST_CTRL0 ;
 scalar_t__ CSI2_PHY_TST_CTRL1 ;
 int PHY_TESTCLK ;
 int PHY_TESTCLR ;
 int PHY_TESTEN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void dw_mipi_csi2_phy_write(struct csi2_dev *csi2,
       u32 test_code, u32 test_data)
{

 writel(PHY_TESTCLR, csi2->base + CSI2_PHY_TST_CTRL0);
 writel(0x0, csi2->base + CSI2_PHY_TST_CTRL1);
 writel(0x0, csi2->base + CSI2_PHY_TST_CTRL0);


 writel(PHY_TESTCLK, csi2->base + CSI2_PHY_TST_CTRL0);


 writel(PHY_TESTEN | test_code, csi2->base + CSI2_PHY_TST_CTRL1);
 writel(0x0, csi2->base + CSI2_PHY_TST_CTRL0);


 writel(test_data, csi2->base + CSI2_PHY_TST_CTRL1);
 writel(PHY_TESTCLK, csi2->base + CSI2_PHY_TST_CTRL0);


 writel(0x0, csi2->base + CSI2_PHY_TST_CTRL0);
}
