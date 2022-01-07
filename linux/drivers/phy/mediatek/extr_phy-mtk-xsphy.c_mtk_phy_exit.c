
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsphy_instance {int ref_clk; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct xsphy_instance* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mtk_phy_exit(struct phy *phy)
{
 struct xsphy_instance *inst = phy_get_drvdata(phy);

 clk_disable_unprepare(inst->ref_clk);
 return 0;
}
