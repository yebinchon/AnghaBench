
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_host_chan {int ep_type; int hc_num; int ep_is_in; int complete_split; int do_split; int error_state; int do_ping; } ;


 int HCINTMSK (int ) ;
 int HCINTMSK_ACK ;
 int HCINTMSK_BBLERR ;
 int HCINTMSK_CHHLTD ;
 int HCINTMSK_DATATGLERR ;
 int HCINTMSK_FRMOVRUN ;
 int HCINTMSK_NAK ;
 int HCINTMSK_NYET ;
 int HCINTMSK_STALL ;
 int HCINTMSK_XACTERR ;
 int HCINTMSK_XFERCOMPL ;




 scalar_t__ dbg_hc (struct dwc2_host_chan*) ;
 int dbg_perio () ;
 int dev_err (int ,char*) ;
 int dev_vdbg (int ,char*,...) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

__attribute__((used)) static void dwc2_hc_enable_slave_ints(struct dwc2_hsotg *hsotg,
          struct dwc2_host_chan *chan)
{
 u32 hcintmsk = HCINTMSK_CHHLTD;

 switch (chan->ep_type) {
 case 130:
 case 131:
  dev_vdbg(hsotg->dev, "control/bulk\n");
  hcintmsk |= HCINTMSK_XFERCOMPL;
  hcintmsk |= HCINTMSK_STALL;
  hcintmsk |= HCINTMSK_XACTERR;
  hcintmsk |= HCINTMSK_DATATGLERR;
  if (chan->ep_is_in) {
   hcintmsk |= HCINTMSK_BBLERR;
  } else {
   hcintmsk |= HCINTMSK_NAK;
   hcintmsk |= HCINTMSK_NYET;
   if (chan->do_ping)
    hcintmsk |= HCINTMSK_ACK;
  }

  if (chan->do_split) {
   hcintmsk |= HCINTMSK_NAK;
   if (chan->complete_split)
    hcintmsk |= HCINTMSK_NYET;
   else
    hcintmsk |= HCINTMSK_ACK;
  }

  if (chan->error_state)
   hcintmsk |= HCINTMSK_ACK;
  break;

 case 129:
  if (dbg_perio())
   dev_vdbg(hsotg->dev, "intr\n");
  hcintmsk |= HCINTMSK_XFERCOMPL;
  hcintmsk |= HCINTMSK_NAK;
  hcintmsk |= HCINTMSK_STALL;
  hcintmsk |= HCINTMSK_XACTERR;
  hcintmsk |= HCINTMSK_DATATGLERR;
  hcintmsk |= HCINTMSK_FRMOVRUN;

  if (chan->ep_is_in)
   hcintmsk |= HCINTMSK_BBLERR;
  if (chan->error_state)
   hcintmsk |= HCINTMSK_ACK;
  if (chan->do_split) {
   if (chan->complete_split)
    hcintmsk |= HCINTMSK_NYET;
   else
    hcintmsk |= HCINTMSK_ACK;
  }
  break;

 case 128:
  if (dbg_perio())
   dev_vdbg(hsotg->dev, "isoc\n");
  hcintmsk |= HCINTMSK_XFERCOMPL;
  hcintmsk |= HCINTMSK_FRMOVRUN;
  hcintmsk |= HCINTMSK_ACK;

  if (chan->ep_is_in) {
   hcintmsk |= HCINTMSK_XACTERR;
   hcintmsk |= HCINTMSK_BBLERR;
  }
  break;
 default:
  dev_err(hsotg->dev, "## Unknown EP type ##\n");
  break;
 }

 dwc2_writel(hsotg, hcintmsk, HCINTMSK(chan->hc_num));
 if (dbg_hc(chan))
  dev_vdbg(hsotg->dev, "set HCINTMSK to %08x\n", hcintmsk);
}
