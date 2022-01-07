
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_mtk_phy {int dummy; } ;
struct phy {int dummy; } ;


 scalar_t__ phy_get_drvdata (struct phy*) ;

__attribute__((used)) static struct ufs_mtk_phy *get_ufs_mtk_phy(struct phy *generic_phy)
{
 return (struct ufs_mtk_phy *)phy_get_drvdata(generic_phy);
}
