
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {int mode; } ;
struct phy {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int PHY_MODE_INVALID ;
 struct ufs_qcom_phy* get_ufs_qcom_phy (struct phy*) ;

__attribute__((used)) static
int ufs_qcom_phy_qmp_20nm_set_mode(struct phy *generic_phy,
       enum phy_mode mode, int submode)
{
 struct ufs_qcom_phy *phy_common = get_ufs_qcom_phy(generic_phy);

 phy_common->mode = PHY_MODE_INVALID;

 if (mode > 0)
  phy_common->mode = mode;

 return 0;
}
