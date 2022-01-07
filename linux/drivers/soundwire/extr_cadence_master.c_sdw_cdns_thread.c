
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_cdns {int dev; } ;
typedef int irqreturn_t ;


 int CDNS_MCP_INTMASK ;
 int CDNS_MCP_INTSTAT ;
 int CDNS_MCP_INT_SLAVE_MASK ;
 int CDNS_MCP_SLAVE_INTSTAT0 ;
 int CDNS_MCP_SLAVE_INTSTAT1 ;
 int IRQ_HANDLED ;
 int cdns_readl (struct sdw_cdns*,int ) ;
 int cdns_update_slave_status (struct sdw_cdns*,int ,int ) ;
 int cdns_updatel (struct sdw_cdns*,int ,int ,int ) ;
 int cdns_writel (struct sdw_cdns*,int ,int ) ;
 int dev_dbg_ratelimited (int ,char*) ;

irqreturn_t sdw_cdns_thread(int irq, void *dev_id)
{
 struct sdw_cdns *cdns = dev_id;
 u32 slave0, slave1;

 dev_dbg_ratelimited(cdns->dev, "Slave status change\n");

 slave0 = cdns_readl(cdns, CDNS_MCP_SLAVE_INTSTAT0);
 slave1 = cdns_readl(cdns, CDNS_MCP_SLAVE_INTSTAT1);

 cdns_update_slave_status(cdns, slave0, slave1);
 cdns_writel(cdns, CDNS_MCP_SLAVE_INTSTAT0, slave0);
 cdns_writel(cdns, CDNS_MCP_SLAVE_INTSTAT1, slave1);


 cdns_writel(cdns, CDNS_MCP_INTSTAT, CDNS_MCP_INT_SLAVE_MASK);
 cdns_updatel(cdns, CDNS_MCP_INTMASK,
       CDNS_MCP_INT_SLAVE_MASK, CDNS_MCP_INT_SLAVE_MASK);

 return IRQ_HANDLED;
}
