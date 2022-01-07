
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct exynos_sata_phy {int pmureg; } ;


 int EXYNOS5_SATAPHY_PMU_ENABLE ;
 int SATAPHY_CONTROL_OFFSET ;
 struct exynos_sata_phy* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int exynos_sata_phy_power_off(struct phy *phy)
{
 struct exynos_sata_phy *sata_phy = phy_get_drvdata(phy);

 return regmap_update_bits(sata_phy->pmureg, SATAPHY_CONTROL_OFFSET,
   EXYNOS5_SATAPHY_PMU_ENABLE, 0);

}
