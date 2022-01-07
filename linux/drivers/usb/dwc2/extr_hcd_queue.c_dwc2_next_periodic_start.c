
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dwc2_qh {int host_interval; int start_active_frame; int next_active_frame; scalar_t__ dev_speed; scalar_t__ do_split; } ;
struct dwc2_hsotg {int dummy; } ;


 int DWC2_HS_SCHEDULE_UFRAMES ;
 int DWC2_LS_SCHEDULE_FRAMES ;
 scalar_t__ USB_SPEED_HIGH ;
 int dwc2_frame_num_dec (int,int) ;
 scalar_t__ dwc2_frame_num_gt (int,int) ;
 void* dwc2_frame_num_inc (int,int) ;
 int gcd (int,int) ;

__attribute__((used)) static int dwc2_next_periodic_start(struct dwc2_hsotg *hsotg,
        struct dwc2_qh *qh, u16 frame_number)
{
 int missed = 0;
 u16 interval = qh->host_interval;
 u16 prev_frame_number = dwc2_frame_num_dec(frame_number, 1);

 qh->start_active_frame = dwc2_frame_num_inc(qh->start_active_frame,
          interval);
 if (interval >= 0x1000)
  goto exit;
 if (qh->start_active_frame == qh->next_active_frame ||
     dwc2_frame_num_gt(prev_frame_number, qh->start_active_frame)) {
  u16 ideal_start = qh->start_active_frame;
  int periods_in_map;





  if (qh->do_split || qh->dev_speed == USB_SPEED_HIGH)
   periods_in_map = DWC2_HS_SCHEDULE_UFRAMES;
  else
   periods_in_map = DWC2_LS_SCHEDULE_FRAMES;
  interval = gcd(interval, periods_in_map);

  do {
   qh->start_active_frame = dwc2_frame_num_inc(
    qh->start_active_frame, interval);
  } while (dwc2_frame_num_gt(prev_frame_number,
        qh->start_active_frame));

  missed = dwc2_frame_num_dec(qh->start_active_frame,
         ideal_start);
 }

exit:
 qh->next_active_frame = qh->start_active_frame;

 return missed;
}
