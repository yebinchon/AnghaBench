
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {int dummy; } ;
struct phy {int dummy; } ;


 scalar_t__ phy_get_drvdata (struct phy*) ;

struct ufs_qcom_phy *get_ufs_qcom_phy(struct phy *generic_phy)
{
 return (struct ufs_qcom_phy *)phy_get_drvdata(generic_phy);
}
