
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qtd {scalar_t__ error_count; } ;
struct dwc2_hsotg {int dev; } ;
struct dwc2_host_chan {scalar_t__ ep_is_in; } ;


 int HCINTMSK_DATATGLERR ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int disable_hc_int (struct dwc2_hsotg*,int,int ) ;
 int dwc2_hc_handle_tt_clear (struct dwc2_hsotg*,struct dwc2_host_chan*,struct dwc2_qtd*) ;

__attribute__((used)) static void dwc2_hc_datatglerr_intr(struct dwc2_hsotg *hsotg,
        struct dwc2_host_chan *chan, int chnum,
        struct dwc2_qtd *qtd)
{
 dev_dbg(hsotg->dev,
  "--Host Channel %d Interrupt: Data Toggle Error--\n", chnum);

 if (chan->ep_is_in)
  qtd->error_count = 0;
 else
  dev_err(hsotg->dev,
   "Data Toggle Error on OUT transfer, channel %d\n",
   chnum);

 dwc2_hc_handle_tt_clear(hsotg, chan, qtd);
 disable_hc_int(hsotg, chnum, HCINTMSK_DATATGLERR);
}
