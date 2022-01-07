
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct cdns_dphy {scalar_t__ regs; int pll_ref_clk; int psm_clk; } ;


 scalar_t__ DPHY_CMN_SSM ;
 int DPHY_CMN_SSM_EN ;
 int DPHY_CMN_TX_MODE_EN ;
 int clk_prepare_enable (int ) ;
 struct cdns_dphy* phy_get_drvdata (struct phy*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cdns_dphy_power_on(struct phy *phy)
{
 struct cdns_dphy *dphy = phy_get_drvdata(phy);

 clk_prepare_enable(dphy->psm_clk);
 clk_prepare_enable(dphy->pll_ref_clk);


 writel(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
        dphy->regs + DPHY_CMN_SSM);

 return 0;
}
