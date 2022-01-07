
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3_endpoint {int flags; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int ep_cmd; } ;


 int EP_CMD_DFLUSH ;
 int EP_CMD_ERDY ;
 int EP_CMD_SSTALL ;
 int EP_STALLED ;
 int EP_STALL_PENDING ;
 int readl_poll_timeout_atomic (int *,int,int,int,int) ;
 int trace_cdns3_halt (struct cdns3_endpoint*,int,int) ;
 int writel (int,int *) ;

__attribute__((used)) static void cdns3_ep_stall_flush(struct cdns3_endpoint *priv_ep)
{
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
 int val;

 trace_cdns3_halt(priv_ep, 1, 1);

 writel(EP_CMD_DFLUSH | EP_CMD_ERDY | EP_CMD_SSTALL,
        &priv_dev->regs->ep_cmd);


 readl_poll_timeout_atomic(&priv_dev->regs->ep_cmd, val,
      !(val & EP_CMD_DFLUSH), 1, 1000);
 priv_ep->flags |= EP_STALLED;
 priv_ep->flags &= ~EP_STALL_PENDING;
}
