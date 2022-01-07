
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_phy {int is_ref_clk_enabled; scalar_t__ ref_clk_src; scalar_t__ ref_clk_parent; scalar_t__ ref_clk; } ;


 int clk_disable_unprepare (scalar_t__) ;

__attribute__((used)) static void ufs_qcom_phy_disable_ref_clk(struct ufs_qcom_phy *phy)
{
 if (phy->is_ref_clk_enabled) {
  clk_disable_unprepare(phy->ref_clk);




  if (phy->ref_clk_parent)
   clk_disable_unprepare(phy->ref_clk_parent);
  clk_disable_unprepare(phy->ref_clk_src);
  phy->is_ref_clk_enabled = 0;
 }
}
