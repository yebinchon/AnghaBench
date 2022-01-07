
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct dwc2_hsotg {int dev; struct dwc2_host_chan** hc_ptr_array; } ;
struct dwc2_host_chan {size_t xfer_buf; size_t xfer_count; int data_pid_start; } ;


 int GRXSTSP ;
 size_t GRXSTS_BYTECNT_MASK ;
 size_t GRXSTS_BYTECNT_SHIFT ;
 size_t GRXSTS_DPID_MASK ;
 size_t GRXSTS_DPID_SHIFT ;
 size_t GRXSTS_HCHNUM_MASK ;
 size_t GRXSTS_HCHNUM_SHIFT ;




 size_t GRXSTS_PKTSTS_MASK ;
 size_t GRXSTS_PKTSTS_SHIFT ;
 scalar_t__ dbg_perio () ;
 int dev_err (int ,char*,...) ;
 int dev_vdbg (int ,char*,...) ;
 int dwc2_read_packet (struct dwc2_hsotg*,size_t,size_t) ;
 size_t dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static void dwc2_rx_fifo_level_intr(struct dwc2_hsotg *hsotg)
{
 u32 grxsts, chnum, bcnt, dpid, pktsts;
 struct dwc2_host_chan *chan;

 if (dbg_perio())
  dev_vdbg(hsotg->dev, "--RxFIFO Level Interrupt--\n");

 grxsts = dwc2_readl(hsotg, GRXSTSP);
 chnum = (grxsts & GRXSTS_HCHNUM_MASK) >> GRXSTS_HCHNUM_SHIFT;
 chan = hsotg->hc_ptr_array[chnum];
 if (!chan) {
  dev_err(hsotg->dev, "Unable to get corresponding channel\n");
  return;
 }

 bcnt = (grxsts & GRXSTS_BYTECNT_MASK) >> GRXSTS_BYTECNT_SHIFT;
 dpid = (grxsts & GRXSTS_DPID_MASK) >> GRXSTS_DPID_SHIFT;
 pktsts = (grxsts & GRXSTS_PKTSTS_MASK) >> GRXSTS_PKTSTS_SHIFT;


 if (dbg_perio()) {
  dev_vdbg(hsotg->dev, "    Ch num = %d\n", chnum);
  dev_vdbg(hsotg->dev, "    Count = %d\n", bcnt);
  dev_vdbg(hsotg->dev, "    DPID = %d, chan.dpid = %d\n", dpid,
    chan->data_pid_start);
  dev_vdbg(hsotg->dev, "    PStatus = %d\n", pktsts);
 }

 switch (pktsts) {
 case 129:

  if (bcnt > 0) {
   dwc2_read_packet(hsotg, chan->xfer_buf, bcnt);


   chan->xfer_count += bcnt;
   chan->xfer_buf += bcnt;
  }
  break;
 case 128:
 case 131:
 case 130:

  break;
 default:
  dev_err(hsotg->dev,
   "RxFIFO Level Interrupt: Unknown status %d\n", pktsts);
  break;
 }
}
