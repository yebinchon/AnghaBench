
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_ipq806x_sata_phy {scalar_t__ mmio; } ;
struct phy {int dummy; } ;


 scalar_t__ SATA_PHY_P0_PARAM4 ;
 int SATA_PHY_RESET ;
 struct qcom_ipq806x_sata_phy* phy_get_drvdata (struct phy*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int qcom_ipq806x_sata_phy_exit(struct phy *generic_phy)
{
 struct qcom_ipq806x_sata_phy *phy = phy_get_drvdata(generic_phy);
 u32 reg;


 reg = readl_relaxed(phy->mmio + SATA_PHY_P0_PARAM4);
 reg = reg | SATA_PHY_RESET;
 writel_relaxed(reg, phy->mmio + SATA_PHY_P0_PARAM4);

 return 0;
}
