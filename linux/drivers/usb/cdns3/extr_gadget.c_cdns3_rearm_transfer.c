
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct cdns3_endpoint {int name; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int ep_traddr; int ep_cmd; } ;


 int EP_CMD_DRDY ;
 int __cdns3_gadget_wakeup (struct cdns3_device*) ;
 int cdns3_wa1_restore_cycle_bit (struct cdns3_endpoint*) ;
 int readl (int *) ;
 int trace_cdns3_doorbell_epx (int ,int ) ;
 int trace_cdns3_ring (struct cdns3_endpoint*) ;
 int wmb () ;
 int writel (int ,int *) ;

void cdns3_rearm_transfer(struct cdns3_endpoint *priv_ep, u8 rearm)
{
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;

 cdns3_wa1_restore_cycle_bit(priv_ep);

 if (rearm) {
  trace_cdns3_ring(priv_ep);


  wmb();
  writel(EP_CMD_DRDY, &priv_dev->regs->ep_cmd);

  __cdns3_gadget_wakeup(priv_dev);

  trace_cdns3_doorbell_epx(priv_ep->name,
      readl(&priv_dev->regs->ep_traddr));
 }
}
