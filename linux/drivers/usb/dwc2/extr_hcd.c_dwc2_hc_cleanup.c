
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;
struct dwc2_host_chan {int hc_num; int split_order_list_entry; scalar_t__ xfer_started; } ;


 int HCINT (int ) ;
 int HCINTMSK (int ) ;
 int HCINTMSK_RESERVED14_31 ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int list_del_init (int *) ;

void dwc2_hc_cleanup(struct dwc2_hsotg *hsotg, struct dwc2_host_chan *chan)
{
 u32 hcintmsk;

 chan->xfer_started = 0;

 list_del_init(&chan->split_order_list_entry);





 dwc2_writel(hsotg, 0, HCINTMSK(chan->hc_num));
 hcintmsk = 0xffffffff;
 hcintmsk &= ~HCINTMSK_RESERVED14_31;
 dwc2_writel(hsotg, hcintmsk, HCINT(chan->hc_num));
}
