
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dwc2_qh {int next_active_frame; int td_last; int td_first; scalar_t__ channel; } ;
struct dwc2_hsotg {int dummy; } ;


 int FRLISTEN_64_SIZE ;
 void* dwc2_calc_starting_frame (struct dwc2_hsotg*,struct dwc2_qh*,int*) ;
 int dwc2_frame_incr_val (struct dwc2_qh*) ;
 int dwc2_frame_list_idx (int) ;
 int dwc2_frame_to_desc_idx (struct dwc2_qh*,int) ;

__attribute__((used)) static u16 dwc2_recalc_initial_desc_idx(struct dwc2_hsotg *hsotg,
     struct dwc2_qh *qh)
{
 u16 frame, fr_idx, fr_idx_tmp, skip_frames;
 if (qh->channel) {
  frame = dwc2_calc_starting_frame(hsotg, qh, &skip_frames);




  fr_idx_tmp = dwc2_frame_list_idx(frame);
  fr_idx = (FRLISTEN_64_SIZE +
     dwc2_frame_list_idx(qh->next_active_frame) -
     fr_idx_tmp) % dwc2_frame_incr_val(qh);
  fr_idx = (fr_idx + fr_idx_tmp) % FRLISTEN_64_SIZE;
 } else {
  qh->next_active_frame = dwc2_calc_starting_frame(hsotg, qh,
          &skip_frames);
  fr_idx = dwc2_frame_list_idx(qh->next_active_frame);
 }

 qh->td_first = qh->td_last = dwc2_frame_to_desc_idx(qh, fr_idx);

 return skip_frames;
}
