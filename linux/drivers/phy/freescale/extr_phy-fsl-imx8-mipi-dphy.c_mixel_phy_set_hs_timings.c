
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy {int dummy; } ;
struct TYPE_4__ {int rxhs_settle; int mc_prg_hs_trail; int m_prg_hs_trail; int mc_prg_hs_zero; int m_prg_hs_zero; int mc_prg_hs_prepare; int m_prg_hs_prepare; } ;
struct mixel_dphy_priv {TYPE_1__* devdata; TYPE_2__ cfg; } ;
struct TYPE_3__ {int reg_rxhs_settle; } ;


 int DPHY_MC_PRG_HS_PREPARE ;
 int DPHY_MC_PRG_HS_TRAIL ;
 int DPHY_MC_PRG_HS_ZERO ;
 int DPHY_M_PRG_HS_PREPARE ;
 int DPHY_M_PRG_HS_TRAIL ;
 int DPHY_M_PRG_HS_ZERO ;
 struct mixel_dphy_priv* phy_get_drvdata (struct phy*) ;
 int phy_write (struct phy*,int ,int ) ;

__attribute__((used)) static void mixel_phy_set_hs_timings(struct phy *phy)
{
 struct mixel_dphy_priv *priv = phy_get_drvdata(phy);

 phy_write(phy, priv->cfg.m_prg_hs_prepare, DPHY_M_PRG_HS_PREPARE);
 phy_write(phy, priv->cfg.mc_prg_hs_prepare, DPHY_MC_PRG_HS_PREPARE);
 phy_write(phy, priv->cfg.m_prg_hs_zero, DPHY_M_PRG_HS_ZERO);
 phy_write(phy, priv->cfg.mc_prg_hs_zero, DPHY_MC_PRG_HS_ZERO);
 phy_write(phy, priv->cfg.m_prg_hs_trail, DPHY_M_PRG_HS_TRAIL);
 phy_write(phy, priv->cfg.mc_prg_hs_trail, DPHY_MC_PRG_HS_TRAIL);
 phy_write(phy, priv->cfg.rxhs_settle, priv->devdata->reg_rxhs_settle);
}
