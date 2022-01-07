
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_phy {int phy_reset; int vregs; } ;
struct phy {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct qcom_phy* phy_get_drvdata (struct phy*) ;
 int regulator_bulk_disable (int ,int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int qcom_pcie2_phy_exit(struct phy *phy)
{
 struct qcom_phy *qphy = phy_get_drvdata(phy);

 regulator_bulk_disable(ARRAY_SIZE(qphy->vregs), qphy->vregs);
 reset_control_assert(qphy->phy_reset);

 return 0;
}
