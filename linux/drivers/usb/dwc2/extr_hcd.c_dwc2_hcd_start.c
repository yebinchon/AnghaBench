
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {scalar_t__ op_state; int start_work; int wq_otg; } ;


 int HPRT0 ;
 int HPRT0_RST ;
 scalar_t__ OTG_STATE_B_HOST ;
 int dwc2_read_hprt0 (struct dwc2_hsotg*) ;
 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

void dwc2_hcd_start(struct dwc2_hsotg *hsotg)
{
 u32 hprt0;

 if (hsotg->op_state == OTG_STATE_B_HOST) {





  hprt0 = dwc2_read_hprt0(hsotg);
  hprt0 |= HPRT0_RST;
  dwc2_writel(hsotg, hprt0, HPRT0);
 }

 queue_delayed_work(hsotg->wq_otg, &hsotg->start_work,
      msecs_to_jiffies(50));
}
