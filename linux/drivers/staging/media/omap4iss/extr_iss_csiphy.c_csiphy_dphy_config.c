
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ths_term; int ths_settle; int tclk_term; int tclk_miss; int tclk_settle; } ;
struct iss_csiphy {int phy_regs; int iss; TYPE_1__ dphy; } ;


 int REGISTER0 ;
 int REGISTER0_THS_SETTLE_SHIFT ;
 int REGISTER0_THS_TERM_SHIFT ;
 int REGISTER1 ;
 int REGISTER1_CTRLCLK_DIV_FACTOR_SHIFT ;
 int REGISTER1_DPHY_HS_SYNC_PATTERN_SHIFT ;
 int REGISTER1_TCLK_SETTLE_SHIFT ;
 int REGISTER1_TCLK_TERM_SHIFT ;
 int iss_reg_write (int ,int ,int ,int) ;

__attribute__((used)) static void csiphy_dphy_config(struct iss_csiphy *phy)
{
 u32 reg;


 reg = phy->dphy.ths_term << REGISTER0_THS_TERM_SHIFT;
 reg |= phy->dphy.ths_settle << REGISTER0_THS_SETTLE_SHIFT;

 iss_reg_write(phy->iss, phy->phy_regs, REGISTER0, reg);


 reg = phy->dphy.tclk_term << REGISTER1_TCLK_TERM_SHIFT;
 reg |= phy->dphy.tclk_miss << REGISTER1_CTRLCLK_DIV_FACTOR_SHIFT;
 reg |= phy->dphy.tclk_settle << REGISTER1_TCLK_SETTLE_SHIFT;
 reg |= 0xb8 << REGISTER1_DPHY_HS_SYNC_PATTERN_SHIFT;

 iss_reg_write(phy->iss, phy->phy_regs, REGISTER1, reg);
}
