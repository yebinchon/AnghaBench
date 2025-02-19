
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_master_prop {int mclk_freq; } ;
struct sdw_cdns {int dev; } ;
struct sdw_bus_params {int curr_dr_freq; scalar_t__ next_bank; } ;
struct sdw_bus {struct sdw_master_prop prop; } ;


 int CDNS_MCP_CLK_CTRL0 ;
 int CDNS_MCP_CLK_CTRL1 ;
 int CDNS_MCP_CLK_MCLKD_MASK ;
 int EINVAL ;
 int SDW_DOUBLE_RATE_FACTOR ;
 struct sdw_cdns* bus_to_cdns (struct sdw_bus*) ;
 int cdns_updatel (struct sdw_cdns*,int,int ,int) ;
 int dev_err (int ,char*) ;

int cdns_bus_conf(struct sdw_bus *bus, struct sdw_bus_params *params)
{
 struct sdw_master_prop *prop = &bus->prop;
 struct sdw_cdns *cdns = bus_to_cdns(bus);
 int mcp_clkctrl_off;
 int divider;

 if (!params->curr_dr_freq) {
  dev_err(cdns->dev, "NULL curr_dr_freq\n");
  return -EINVAL;
 }

 divider = prop->mclk_freq * SDW_DOUBLE_RATE_FACTOR /
  params->curr_dr_freq;
 divider--;

 if (params->next_bank)
  mcp_clkctrl_off = CDNS_MCP_CLK_CTRL1;
 else
  mcp_clkctrl_off = CDNS_MCP_CLK_CTRL0;

 cdns_updatel(cdns, mcp_clkctrl_off, CDNS_MCP_CLK_MCLKD_MASK, divider);

 return 0;
}
