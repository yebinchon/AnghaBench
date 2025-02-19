
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qh {scalar_t__ dev_speed; int do_split; } ;
struct dwc2_hsotg {int dummy; } ;


 scalar_t__ USB_SPEED_HIGH ;
 int dwc2_qh_schedule_print (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int dwc2_sch_dbg (struct dwc2_hsotg*,char*,struct dwc2_qh*,int) ;
 int dwc2_uframe_schedule_hs (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int dwc2_uframe_schedule_ls (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int dwc2_uframe_schedule_split (struct dwc2_hsotg*,struct dwc2_qh*) ;

__attribute__((used)) static int dwc2_uframe_schedule(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
 int ret;

 if (qh->dev_speed == USB_SPEED_HIGH)
  ret = dwc2_uframe_schedule_hs(hsotg, qh);
 else if (!qh->do_split)
  ret = dwc2_uframe_schedule_ls(hsotg, qh);
 else
  ret = dwc2_uframe_schedule_split(hsotg, qh);

 if (ret)
  dwc2_sch_dbg(hsotg, "QH=%p Failed to schedule %d\n", qh, ret);
 else
  dwc2_qh_schedule_print(hsotg, qh);

 return ret;
}
