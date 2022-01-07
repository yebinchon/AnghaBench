
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct phy {TYPE_2__ dev; } ;
struct TYPE_4__ {int cm; int cn; int co; } ;
struct mixel_dphy_priv {TYPE_1__ cfg; } ;


 int CM (int) ;
 int CN (int) ;
 int CO (int) ;
 int DPHY_CM ;
 int DPHY_CN ;
 int DPHY_CO ;
 int EINVAL ;
 int dev_dbg (TYPE_2__*,char*,int,int,int) ;
 int dev_err (TYPE_2__*,char*,int,int,int) ;
 struct mixel_dphy_priv* dev_get_drvdata (int ) ;
 int phy_write (struct phy*,int ,int ) ;

__attribute__((used)) static int mixel_dphy_set_pll_params(struct phy *phy)
{
 struct mixel_dphy_priv *priv = dev_get_drvdata(phy->dev.parent);

 if (priv->cfg.cm < 16 || priv->cfg.cm > 255 ||
     priv->cfg.cn < 1 || priv->cfg.cn > 32 ||
     priv->cfg.co < 1 || priv->cfg.co > 8) {
  dev_err(&phy->dev, "Invalid CM/CN/CO values! (%u/%u/%u)\n",
   priv->cfg.cm, priv->cfg.cn, priv->cfg.co);
  return -EINVAL;
 }
 dev_dbg(&phy->dev, "Using CM:%u CN:%u CO:%u\n",
  priv->cfg.cm, priv->cfg.cn, priv->cfg.co);
 phy_write(phy, CM(priv->cfg.cm), DPHY_CM);
 phy_write(phy, CN(priv->cfg.cn), DPHY_CN);
 phy_write(phy, CO(priv->cfg.co), DPHY_CO);
 return 0;
}
