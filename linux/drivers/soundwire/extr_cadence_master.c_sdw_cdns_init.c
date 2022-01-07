
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_master_prop {int mclk_freq; int max_clk_freq; int default_col; int default_row; } ;
struct sdw_bus {struct sdw_master_prop prop; } ;
struct sdw_cdns {int dev; struct sdw_bus bus; } ;


 int CDNS_DEFAULT_SSP_INTERVAL ;
 int CDNS_MCP_CLK_CTRL0 ;
 int CDNS_MCP_CLK_CTRL1 ;
 int CDNS_MCP_CLK_MCLKD_MASK ;
 int CDNS_MCP_CONFIG ;
 int CDNS_MCP_CONFIG_BUS_REL ;
 int CDNS_MCP_CONFIG_CMD ;
 int CDNS_MCP_CONFIG_MCMD_RETRY ;
 int CDNS_MCP_CONFIG_MPREQ_DELAY ;
 int CDNS_MCP_CONFIG_OP ;
 int CDNS_MCP_CONFIG_OP_NORMAL ;
 int CDNS_MCP_CONFIG_SNIFFER ;
 int CDNS_MCP_CONTROL ;
 int CDNS_MCP_CONTROL_CLK_STOP_CLR ;
 int CDNS_MCP_CONTROL_CMD_ACCEPT ;
 int CDNS_MCP_FRAME_SHAPE_INIT ;
 int CDNS_MCP_SSP_CTRL0 ;
 int CDNS_MCP_SSP_CTRL1 ;
 int SDW_REG_SHIFT (int ) ;
 int cdns_clear_bit (struct sdw_cdns*,int ,int ) ;
 int cdns_readl (struct sdw_cdns*,int ) ;
 int cdns_set_initial_frame_shape (int ,int ) ;
 int cdns_updatel (struct sdw_cdns*,int ,int,int) ;
 int cdns_writel (struct sdw_cdns*,int ,int) ;
 int dev_err (int ,char*) ;

int sdw_cdns_init(struct sdw_cdns *cdns)
{
 struct sdw_bus *bus = &cdns->bus;
 struct sdw_master_prop *prop = &bus->prop;
 u32 val;
 int divider;
 int ret;


 ret = cdns_clear_bit(cdns, CDNS_MCP_CONTROL,
        CDNS_MCP_CONTROL_CLK_STOP_CLR);
 if (ret < 0) {
  dev_err(cdns->dev, "Couldn't exit from clock stop\n");
  return ret;
 }


 divider = (prop->mclk_freq / prop->max_clk_freq) - 1;

 cdns_updatel(cdns, CDNS_MCP_CLK_CTRL0,
       CDNS_MCP_CLK_MCLKD_MASK, divider);
 cdns_updatel(cdns, CDNS_MCP_CLK_CTRL1,
       CDNS_MCP_CLK_MCLKD_MASK, divider);





 val = cdns_set_initial_frame_shape(prop->default_row,
        prop->default_col);
 cdns_writel(cdns, CDNS_MCP_FRAME_SHAPE_INIT, val);


 cdns_writel(cdns, CDNS_MCP_SSP_CTRL0, CDNS_DEFAULT_SSP_INTERVAL);
 cdns_writel(cdns, CDNS_MCP_SSP_CTRL1, CDNS_DEFAULT_SSP_INTERVAL);


 cdns_updatel(cdns, CDNS_MCP_CONTROL, CDNS_MCP_CONTROL_CMD_ACCEPT,
       CDNS_MCP_CONTROL_CMD_ACCEPT);


 val = cdns_readl(cdns, CDNS_MCP_CONFIG);


 val |= CDNS_MCP_CONFIG_MCMD_RETRY;


 val |= 0xF << SDW_REG_SHIFT(CDNS_MCP_CONFIG_MPREQ_DELAY);


 val &= ~CDNS_MCP_CONFIG_BUS_REL;


 val &= ~CDNS_MCP_CONFIG_SNIFFER;


 val &= ~CDNS_MCP_CONFIG_CMD;


 val &= ~CDNS_MCP_CONFIG_OP;
 val |= CDNS_MCP_CONFIG_OP_NORMAL;

 cdns_writel(cdns, CDNS_MCP_CONFIG, val);

 return 0;
}
