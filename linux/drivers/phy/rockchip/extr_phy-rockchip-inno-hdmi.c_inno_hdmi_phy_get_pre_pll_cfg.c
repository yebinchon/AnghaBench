
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pre_pll_config {unsigned long pixclock; unsigned long tmdsclock; } ;
struct inno_hdmi_phy {int dummy; } ;


 int EINVAL ;
 struct pre_pll_config const* ERR_PTR (int ) ;
 unsigned long inno_hdmi_phy_get_tmdsclk (struct inno_hdmi_phy*,unsigned long) ;
 struct pre_pll_config* pre_pll_cfg_table ;

__attribute__((used)) static const
struct pre_pll_config *inno_hdmi_phy_get_pre_pll_cfg(struct inno_hdmi_phy *inno,
           unsigned long rate)
{
 const struct pre_pll_config *cfg = pre_pll_cfg_table;
 unsigned long tmdsclock = inno_hdmi_phy_get_tmdsclk(inno, rate);

 for (; cfg->pixclock != 0; cfg++)
  if (cfg->pixclock == rate && cfg->tmdsclock == tmdsclock)
   break;

 if (cfg->pixclock == 0)
  return ERR_PTR(-EINVAL);

 return cfg;
}
