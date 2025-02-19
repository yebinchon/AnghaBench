
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int address; } ;
struct cdns3_endpoint {int flags; scalar_t__ type; int wa1_set; int dir; TYPE_1__ endpoint; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {scalar_t__ dev_ver; TYPE_2__* regs; } ;
struct TYPE_4__ {int ep_cfg; int ep_sts; } ;


 scalar_t__ DEV_VER_V2 ;
 int EP_CFG_ENABLE ;
 int EP_DEFERRED_DRDY ;
 int EP_QUIRK_END_TRANSFER ;
 int EP_QUIRK_EXTRA_BUF_EN ;
 int EP_QUIRK_ISO_OUT_EN ;
 int EP_STALLED ;
 int EP_STALL_PENDING ;
 int EP_STS_DESCMIS ;
 int EP_STS_IOC ;
 int EP_STS_ISP ;
 int EP_STS_TRBERR ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int cdns3_ep_stall_flush (struct cdns3_endpoint*) ;
 int cdns3_rearm_transfer (struct cdns3_endpoint*,int ) ;
 int cdns3_select_ep (struct cdns3_device*,int ) ;
 int cdns3_start_all_request (struct cdns3_device*,struct cdns3_endpoint*) ;
 int cdns3_transfer_completed (struct cdns3_device*,struct cdns3_endpoint*) ;
 int cdns3_wa2_descmissing_packet (struct cdns3_endpoint*) ;
 int readl (int *) ;
 int trace_cdns3_epx_irq (struct cdns3_device*,struct cdns3_endpoint*) ;
 int writel (int,int *) ;

__attribute__((used)) static int cdns3_check_ep_interrupt_proceed(struct cdns3_endpoint *priv_ep)
{
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
 u32 ep_sts_reg;

 cdns3_select_ep(priv_dev, priv_ep->endpoint.address);

 trace_cdns3_epx_irq(priv_dev, priv_ep);

 ep_sts_reg = readl(&priv_dev->regs->ep_sts);
 writel(ep_sts_reg, &priv_dev->regs->ep_sts);

 if (ep_sts_reg & EP_STS_TRBERR) {
  if (priv_ep->flags & EP_STALL_PENDING &&
      !(ep_sts_reg & EP_STS_DESCMIS &&
      priv_dev->dev_ver < DEV_VER_V2)) {
   cdns3_ep_stall_flush(priv_ep);
  }
  if (priv_ep->type == USB_ENDPOINT_XFER_ISOC &&
      !priv_ep->wa1_set) {
   if (!priv_ep->dir) {
    u32 ep_cfg = readl(&priv_dev->regs->ep_cfg);

    ep_cfg &= ~EP_CFG_ENABLE;
    writel(ep_cfg, &priv_dev->regs->ep_cfg);
    priv_ep->flags &= ~EP_QUIRK_ISO_OUT_EN;
   }
   cdns3_transfer_completed(priv_dev, priv_ep);
  } else if (!(priv_ep->flags & EP_STALLED) &&
     !(priv_ep->flags & EP_STALL_PENDING)) {
   if (priv_ep->flags & EP_DEFERRED_DRDY) {
    priv_ep->flags &= ~EP_DEFERRED_DRDY;
    cdns3_start_all_request(priv_dev, priv_ep);
   } else {
    cdns3_rearm_transfer(priv_ep,
           priv_ep->wa1_set);
   }
  }
 }

 if ((ep_sts_reg & EP_STS_IOC) || (ep_sts_reg & EP_STS_ISP)) {
  if (priv_ep->flags & EP_QUIRK_EXTRA_BUF_EN) {
   if (ep_sts_reg & EP_STS_ISP)
    priv_ep->flags |= EP_QUIRK_END_TRANSFER;
   else
    priv_ep->flags &= ~EP_QUIRK_END_TRANSFER;
  }

  cdns3_transfer_completed(priv_dev, priv_ep);
 }







 if (ep_sts_reg & EP_STS_DESCMIS && priv_dev->dev_ver < DEV_VER_V2 &&
     !(priv_ep->flags & EP_STALLED))
  cdns3_wa2_descmissing_packet(priv_ep);

 return 0;
}
