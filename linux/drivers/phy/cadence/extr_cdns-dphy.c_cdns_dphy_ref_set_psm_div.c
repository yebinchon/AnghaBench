
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cdns_dphy {scalar_t__ regs; } ;


 scalar_t__ DPHY_PSM_CFG ;
 int DPHY_PSM_CFG_FROM_REG ;
 int DPHY_PSM_CLK_DIV (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_dphy_ref_set_psm_div(struct cdns_dphy *dphy, u8 div)
{
 writel(DPHY_PSM_CFG_FROM_REG | DPHY_PSM_CLK_DIV(div),
        dphy->regs + DPHY_PSM_CFG);
}
