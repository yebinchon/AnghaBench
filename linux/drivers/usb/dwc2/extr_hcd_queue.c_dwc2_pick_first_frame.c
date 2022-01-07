
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dwc2_qh {scalar_t__ dev_speed; int num_hs_transfers; int ls_start_schedule_slice; int next_active_frame; int start_active_frame; int host_interval; TYPE_2__* hs_transfers; scalar_t__ do_split; } ;
struct TYPE_3__ {int uframe_sched; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;
struct TYPE_4__ {int start_schedule_us; } ;


 int DWC2_HS_PERIODIC_US_PER_UFRAME ;
 int DWC2_HS_SCHEDULE_UFRAMES ;
 int DWC2_LS_PERIODIC_SLICES_PER_FRAME ;
 int DWC2_LS_SCHEDULE_FRAMES ;
 scalar_t__ USB_SPEED_HIGH ;
 int WARN_ON (int) ;
 int dwc2_frame_num_dec (int,int) ;
 scalar_t__ dwc2_frame_num_gt (int,int) ;
 int dwc2_frame_num_inc (int,int) ;
 int dwc2_hcd_get_frame_number (struct dwc2_hsotg*) ;
 int dwc2_sch_vdbg (struct dwc2_hsotg*,char*,struct dwc2_qh*,int,int) ;
 int gcd (int ,int ) ;

__attribute__((used)) static void dwc2_pick_first_frame(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
 u16 frame_number;
 u16 earliest_frame;
 u16 next_active_frame;
 u16 relative_frame;
 u16 interval;





 frame_number = dwc2_hcd_get_frame_number(hsotg);
 earliest_frame = dwc2_frame_num_inc(frame_number, 1);
 next_active_frame = earliest_frame;


 if (!hsotg->params.uframe_sched) {
  if (qh->do_split)

   next_active_frame |= 0x7;
  goto exit;
 }

 if (qh->dev_speed == USB_SPEED_HIGH || qh->do_split) {






  WARN_ON(qh->num_hs_transfers < 1);

  relative_frame = qh->hs_transfers[0].start_schedule_us /
     DWC2_HS_PERIODIC_US_PER_UFRAME;


  interval = gcd(qh->host_interval, DWC2_HS_SCHEDULE_UFRAMES);

 } else {







  relative_frame = qh->ls_start_schedule_slice /
     DWC2_LS_PERIODIC_SLICES_PER_FRAME;
  interval = gcd(qh->host_interval, DWC2_LS_SCHEDULE_FRAMES);
 }


 WARN_ON(relative_frame >= interval);
 next_active_frame = (next_active_frame / interval) * interval;





 next_active_frame = dwc2_frame_num_inc(next_active_frame,
            relative_frame);






 next_active_frame = dwc2_frame_num_dec(next_active_frame, 1);





 while (dwc2_frame_num_gt(earliest_frame, next_active_frame))
  next_active_frame = dwc2_frame_num_inc(next_active_frame,
             interval);

exit:
 qh->next_active_frame = next_active_frame;
 qh->start_active_frame = next_active_frame;

 dwc2_sch_vdbg(hsotg, "QH=%p First fn=%04x nxt=%04x\n",
        qh, frame_number, qh->next_active_frame);
}
