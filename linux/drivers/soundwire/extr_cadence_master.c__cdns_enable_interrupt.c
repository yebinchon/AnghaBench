
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_cdns {int dummy; } ;


 int CDNS_MCP_INTMASK ;
 int CDNS_MCP_INT_CTRL_CLASH ;
 int CDNS_MCP_INT_DATA_CLASH ;
 int CDNS_MCP_INT_IRQ ;
 int CDNS_MCP_INT_PARITY ;
 int CDNS_MCP_INT_RX_WL ;
 int CDNS_MCP_INT_SLAVE_MASK ;
 int CDNS_MCP_SLAVE_INTMASK0 ;
 int CDNS_MCP_SLAVE_INTMASK0_MASK ;
 int CDNS_MCP_SLAVE_INTMASK1 ;
 int CDNS_MCP_SLAVE_INTMASK1_MASK ;
 int cdns_writel (struct sdw_cdns*,int ,int) ;
 int interrupt_mask ;

__attribute__((used)) static int _cdns_enable_interrupt(struct sdw_cdns *cdns)
{
 u32 mask;

 cdns_writel(cdns, CDNS_MCP_SLAVE_INTMASK0,
      CDNS_MCP_SLAVE_INTMASK0_MASK);
 cdns_writel(cdns, CDNS_MCP_SLAVE_INTMASK1,
      CDNS_MCP_SLAVE_INTMASK1_MASK);


 mask = CDNS_MCP_INT_SLAVE_MASK;


 mask |= CDNS_MCP_INT_CTRL_CLASH | CDNS_MCP_INT_DATA_CLASH |
  CDNS_MCP_INT_PARITY;




 mask |= CDNS_MCP_INT_RX_WL;





 mask |= CDNS_MCP_INT_IRQ;

 if (interrupt_mask)
  mask = interrupt_mask;

 cdns_writel(cdns, CDNS_MCP_INTMASK, mask);

 return 0;
}
