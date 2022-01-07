
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {scalar_t__ mmio; } ;


 scalar_t__ UFS_PHY_POWER_DOWN_CONTROL ;
 int mb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static
void ufs_qcom_phy_qmp_14nm_power_control(struct ufs_qcom_phy *phy, bool val)
{
 writel_relaxed(val ? 0x1 : 0x0, phy->mmio + UFS_PHY_POWER_DOWN_CONTROL);




 mb();
}
