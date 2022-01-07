
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_phy {int phy_reset; int vregs; int dev; } ;
struct phy {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int ,char*) ;
 struct qcom_phy* phy_get_drvdata (struct phy*) ;
 int regulator_bulk_enable (int ,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int qcom_pcie2_phy_init(struct phy *phy)
{
 struct qcom_phy *qphy = phy_get_drvdata(phy);
 int ret;

 ret = reset_control_deassert(qphy->phy_reset);
 if (ret) {
  dev_err(qphy->dev, "cannot deassert pipe reset\n");
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(qphy->vregs), qphy->vregs);
 if (ret)
  reset_control_assert(qphy->phy_reset);

 return ret;
}
