
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns_dphy {TYPE_1__* ops; } ;
typedef enum cdns_dphy_clk_lane_cfg { ____Placeholder_cdns_dphy_clk_lane_cfg } cdns_dphy_clk_lane_cfg ;
struct TYPE_2__ {int (* set_clk_lane_cfg ) (struct cdns_dphy*,int) ;} ;


 int stub1 (struct cdns_dphy*,int) ;

__attribute__((used)) static void cdns_dphy_set_clk_lane_cfg(struct cdns_dphy *dphy,
           enum cdns_dphy_clk_lane_cfg cfg)
{
 if (dphy->ops->set_clk_lane_cfg)
  dphy->ops->set_clk_lane_cfg(dphy, cfg);
}
