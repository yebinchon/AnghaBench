
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int periodic_size; scalar_t__ rh_state; int next_frame; unsigned int now_frame; } ;


 scalar_t__ FOTG210_RH_RUNNING ;
 unsigned int fotg210_read_frame_index (struct fotg210_hcd*) ;
 unsigned int scan_frame_queue (struct fotg210_hcd*,unsigned int,unsigned int,int) ;

__attribute__((used)) static void scan_isoc(struct fotg210_hcd *fotg210)
{
 unsigned uf, now_frame, frame, ret;
 unsigned fmask = fotg210->periodic_size - 1;
 bool live;






 if (fotg210->rh_state >= FOTG210_RH_RUNNING) {
  uf = fotg210_read_frame_index(fotg210);
  now_frame = (uf >> 3) & fmask;
  live = 1;
 } else {
  now_frame = (fotg210->next_frame - 1) & fmask;
  live = 0;
 }
 fotg210->now_frame = now_frame;

 frame = fotg210->next_frame;
 for (;;) {
  ret = 1;
  while (ret != 0)
   ret = scan_frame_queue(fotg210, frame,
     now_frame, live);


  if (frame == now_frame)
   break;
  frame = (frame + 1) & fmask;
 }
 fotg210->next_frame = now_frame;
}
