
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos5_usbdrd_phy {scalar_t__ reg_phy; } ;


 scalar_t__ EXYNOS5_DRD_PHYREG0 ;
 int PHYREG0_CR_CAP_ADDR ;
 int PHYREG0_CR_CAP_DATA ;
 int PHYREG0_CR_DATA_IN (int ) ;
 int PHYREG0_CR_WRITE ;
 int crport_handshake (struct exynos5_usbdrd_phy*,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int crport_ctrl_write(struct exynos5_usbdrd_phy *phy_drd,
        u32 addr, u32 data)
{
 int ret;


 writel(PHYREG0_CR_DATA_IN(addr),
        phy_drd->reg_phy + EXYNOS5_DRD_PHYREG0);
 ret = crport_handshake(phy_drd, PHYREG0_CR_DATA_IN(addr),
          PHYREG0_CR_CAP_ADDR);
 if (ret)
  return ret;


 writel(PHYREG0_CR_DATA_IN(data),
        phy_drd->reg_phy + EXYNOS5_DRD_PHYREG0);
 ret = crport_handshake(phy_drd, PHYREG0_CR_DATA_IN(data),
          PHYREG0_CR_CAP_DATA);
 if (ret)
  return ret;

 ret = crport_handshake(phy_drd, PHYREG0_CR_DATA_IN(data),
          PHYREG0_CR_WRITE);

 return ret;
}
