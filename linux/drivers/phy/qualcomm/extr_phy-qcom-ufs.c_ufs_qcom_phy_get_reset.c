
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {struct reset_control* ufs_reset; int dev; } ;
struct reset_control {int dummy; } ;


 scalar_t__ IS_ERR (struct reset_control*) ;
 int PTR_ERR (struct reset_control*) ;
 struct reset_control* devm_reset_control_get_exclusive_by_index (int ,int ) ;

__attribute__((used)) static int ufs_qcom_phy_get_reset(struct ufs_qcom_phy *phy_common)
{
 struct reset_control *reset;

 if (phy_common->ufs_reset)
  return 0;

 reset = devm_reset_control_get_exclusive_by_index(phy_common->dev, 0);
 if (IS_ERR(reset))
  return PTR_ERR(reset);

 phy_common->ufs_reset = reset;
 return 0;
}
