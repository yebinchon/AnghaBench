
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dwc2_qh {scalar_t__ dev_speed; } ;
struct dwc2_hsotg {int frame_number; } ;


 scalar_t__ USB_SPEED_HIGH ;
 int dwc2_frame_num_inc (int ,int) ;
 int dwc2_full_frame_num (int) ;
 int dwc2_hcd_get_frame_number (struct dwc2_hsotg*) ;
 int dwc2_micro_frame_num (int ) ;

__attribute__((used)) static u16 dwc2_calc_starting_frame(struct dwc2_hsotg *hsotg,
        struct dwc2_qh *qh, u16 *skip_frames)
{
 u16 frame;

 hsotg->frame_number = dwc2_hcd_get_frame_number(hsotg);
 if (qh->dev_speed == USB_SPEED_HIGH) {







  if (dwc2_micro_frame_num(hsotg->frame_number) >= 5) {
   *skip_frames = 2 * 8;
   frame = dwc2_frame_num_inc(hsotg->frame_number,
         *skip_frames);
  } else {
   *skip_frames = 1 * 8;
   frame = dwc2_frame_num_inc(hsotg->frame_number,
         *skip_frames);
  }

  frame = dwc2_full_frame_num(frame);
 } else {





  *skip_frames = 1;
  frame = dwc2_frame_num_inc(hsotg->frame_number, 2);
 }

 return frame;
}
