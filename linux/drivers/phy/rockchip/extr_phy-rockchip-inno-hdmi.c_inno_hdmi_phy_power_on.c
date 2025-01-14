
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct post_pll_config {unsigned long tmdsclock; int version; } ;
struct phy_config {unsigned long tmdsclock; } ;
struct phy {int dummy; } ;
struct inno_hdmi_phy {int chip_version; int phyclk; TYPE_2__* plat_data; int dev; int pixclock; } ;
struct TYPE_4__ {TYPE_1__* ops; struct phy_config* phy_cfg_table; } ;
struct TYPE_3__ {int (* power_on ) (struct inno_hdmi_phy*,struct post_pll_config const*,struct phy_config const*) ;} ;


 int EINVAL ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 unsigned long inno_hdmi_phy_get_tmdsclk (struct inno_hdmi_phy*,int ) ;
 struct inno_hdmi_phy* phy_get_drvdata (struct phy*) ;
 struct post_pll_config* post_pll_cfg_table ;
 int stub1 (struct inno_hdmi_phy*,struct post_pll_config const*,struct phy_config const*) ;

__attribute__((used)) static int inno_hdmi_phy_power_on(struct phy *phy)
{
 struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
 const struct post_pll_config *cfg = post_pll_cfg_table;
 const struct phy_config *phy_cfg = inno->plat_data->phy_cfg_table;
 unsigned long tmdsclock = inno_hdmi_phy_get_tmdsclk(inno,
           inno->pixclock);
 int ret;

 if (!tmdsclock) {
  dev_err(inno->dev, "TMDS clock is zero!\n");
  return -EINVAL;
 }

 if (!inno->plat_data->ops->power_on)
  return -EINVAL;

 for (; cfg->tmdsclock != 0; cfg++)
  if (tmdsclock <= cfg->tmdsclock &&
      cfg->version & inno->chip_version)
   break;

 for (; phy_cfg->tmdsclock != 0; phy_cfg++)
  if (tmdsclock <= phy_cfg->tmdsclock)
   break;

 if (cfg->tmdsclock == 0 || phy_cfg->tmdsclock == 0)
  return -EINVAL;

 dev_dbg(inno->dev, "Inno HDMI PHY Power On\n");

 ret = clk_prepare_enable(inno->phyclk);
 if (ret)
  return ret;

 ret = inno->plat_data->ops->power_on(inno, cfg, phy_cfg);
 if (ret) {
  clk_disable_unprepare(inno->phyclk);
  return ret;
 }

 return 0;
}
