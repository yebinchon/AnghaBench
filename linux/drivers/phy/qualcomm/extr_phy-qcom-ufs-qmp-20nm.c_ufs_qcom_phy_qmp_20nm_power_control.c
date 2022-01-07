
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {int quirks; scalar_t__ mmio; } ;


 scalar_t__ QSERDES_COM_SYSCLK_EN_SEL_TXBAND ;
 scalar_t__ UFS_PHY_POWER_DOWN_CONTROL ;
 int UFS_QCOM_PHY_QUIRK_HIBERN8_EXIT_AFTER_PHY_PWR_COLLAPSE ;
 int mb () ;
 int usleep_range (int,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static
void ufs_qcom_phy_qmp_20nm_power_control(struct ufs_qcom_phy *phy, bool val)
{
 bool hibern8_exit_after_pwr_collapse = phy->quirks &
  UFS_QCOM_PHY_QUIRK_HIBERN8_EXIT_AFTER_PHY_PWR_COLLAPSE;

 if (val) {
  writel_relaxed(0x1, phy->mmio + UFS_PHY_POWER_DOWN_CONTROL);




  mb();

  if (hibern8_exit_after_pwr_collapse) {




   usleep_range(1, 2);
   writel_relaxed(0x0A, phy->mmio +
           QSERDES_COM_SYSCLK_EN_SEL_TXBAND);
   writel_relaxed(0x08, phy->mmio +
           QSERDES_COM_SYSCLK_EN_SEL_TXBAND);




   mb();
  }
 } else {
  if (hibern8_exit_after_pwr_collapse) {
   writel_relaxed(0x0A, phy->mmio +
           QSERDES_COM_SYSCLK_EN_SEL_TXBAND);
   writel_relaxed(0x02, phy->mmio +
           QSERDES_COM_SYSCLK_EN_SEL_TXBAND);




   mb();
  }

  writel_relaxed(0x0, phy->mmio + UFS_PHY_POWER_DOWN_CONTROL);




  mb();
 }
}
