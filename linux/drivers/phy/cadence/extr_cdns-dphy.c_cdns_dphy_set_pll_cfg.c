
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns_dphy_cfg {int dummy; } ;
struct cdns_dphy {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_pll_cfg ) (struct cdns_dphy*,struct cdns_dphy_cfg const*) ;} ;


 int stub1 (struct cdns_dphy*,struct cdns_dphy_cfg const*) ;

__attribute__((used)) static void cdns_dphy_set_pll_cfg(struct cdns_dphy *dphy,
      const struct cdns_dphy_cfg *cfg)
{
 if (dphy->ops->set_pll_cfg)
  dphy->ops->set_pll_cfg(dphy, cfg);
}
