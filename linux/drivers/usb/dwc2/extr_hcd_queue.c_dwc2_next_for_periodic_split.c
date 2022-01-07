
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dwc2_qh {scalar_t__ next_active_frame; scalar_t__ start_active_frame; scalar_t__ ep_type; int ep_is_in; } ;
struct dwc2_hsotg {int dummy; } ;


 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 void* dwc2_frame_num_dec (scalar_t__,int) ;
 scalar_t__ dwc2_frame_num_gt (scalar_t__,scalar_t__) ;
 scalar_t__ dwc2_frame_num_inc (scalar_t__,scalar_t__) ;

__attribute__((used)) static int dwc2_next_for_periodic_split(struct dwc2_hsotg *hsotg,
     struct dwc2_qh *qh, u16 frame_number)
{
 u16 old_frame = qh->next_active_frame;
 u16 prev_frame_number = dwc2_frame_num_dec(frame_number, 1);
 int missed = 0;
 u16 incr;







 if (old_frame == qh->start_active_frame &&
     !(qh->ep_type == USB_ENDPOINT_XFER_ISOC && !qh->ep_is_in))
  incr = 2;
 else
  incr = 1;

 qh->next_active_frame = dwc2_frame_num_inc(old_frame, incr);
 if (dwc2_frame_num_gt(prev_frame_number, qh->next_active_frame)) {




  missed = dwc2_frame_num_dec(prev_frame_number,
         qh->next_active_frame);
  qh->next_active_frame = frame_number;
 }

 return missed;
}
