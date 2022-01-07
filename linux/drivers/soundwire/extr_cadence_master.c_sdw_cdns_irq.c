
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdw_cdns {int dev; int tx_complete; TYPE_1__* defer; int link_up; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int complete; int length; int msg; } ;


 int CDNS_MCP_INTMASK ;
 int CDNS_MCP_INTSTAT ;
 int CDNS_MCP_INT_CTRL_CLASH ;
 int CDNS_MCP_INT_DATA_CLASH ;
 int CDNS_MCP_INT_IRQ ;
 int CDNS_MCP_INT_PARITY ;
 int CDNS_MCP_INT_RX_WL ;
 int CDNS_MCP_INT_SLAVE_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int cdns_fill_msg_resp (struct sdw_cdns*,int ,int ,int ) ;
 int cdns_read_response (struct sdw_cdns*) ;
 int cdns_readl (struct sdw_cdns*,int ) ;
 int cdns_updatel (struct sdw_cdns*,int ,int,int ) ;
 int cdns_writel (struct sdw_cdns*,int ,int) ;
 int complete (int *) ;
 int dev_err_ratelimited (int ,char*) ;

irqreturn_t sdw_cdns_irq(int irq, void *dev_id)
{
 struct sdw_cdns *cdns = dev_id;
 u32 int_status;
 int ret = IRQ_HANDLED;


 if (!cdns->link_up)
  return IRQ_NONE;

 int_status = cdns_readl(cdns, CDNS_MCP_INTSTAT);

 if (!(int_status & CDNS_MCP_INT_IRQ))
  return IRQ_NONE;

 if (int_status & CDNS_MCP_INT_RX_WL) {
  cdns_read_response(cdns);

  if (cdns->defer) {
   cdns_fill_msg_resp(cdns, cdns->defer->msg,
        cdns->defer->length, 0);
   complete(&cdns->defer->complete);
   cdns->defer = ((void*)0);
  } else {
   complete(&cdns->tx_complete);
  }
 }

 if (int_status & CDNS_MCP_INT_PARITY) {

  dev_err_ratelimited(cdns->dev, "Parity error\n");
 }

 if (int_status & CDNS_MCP_INT_CTRL_CLASH) {

  dev_err_ratelimited(cdns->dev, "Bus clash for control word\n");
 }

 if (int_status & CDNS_MCP_INT_DATA_CLASH) {




  dev_err_ratelimited(cdns->dev, "Bus clash for data word\n");
 }

 if (int_status & CDNS_MCP_INT_SLAVE_MASK) {

  cdns_updatel(cdns, CDNS_MCP_INTMASK,
        CDNS_MCP_INT_SLAVE_MASK, 0);

  int_status &= ~CDNS_MCP_INT_SLAVE_MASK;
  ret = IRQ_WAKE_THREAD;
 }

 cdns_writel(cdns, CDNS_MCP_INTSTAT, int_status);
 return ret;
}
