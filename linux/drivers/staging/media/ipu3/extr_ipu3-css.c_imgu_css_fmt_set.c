
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int dummy; } ;
struct v4l2_pix_format_mplane {int dummy; } ;
struct imgu_css_pipe {struct v4l2_rect* rect; int * queue; } ;
struct imgu_css {struct imgu_css_pipe* pipes; } ;
typedef int rect_data ;


 int EINVAL ;
 int IPU3_CSS_QUEUES ;
 int IPU3_CSS_QUEUE_TO_FLAGS (int) ;
 int IPU3_CSS_RECTS ;
 int imgu_css_fmt_try (struct imgu_css*,struct v4l2_pix_format_mplane**,struct v4l2_rect**,unsigned int) ;
 scalar_t__ imgu_css_queue_init (int *,struct v4l2_pix_format_mplane*,int ) ;
 int memset (struct v4l2_rect*,int ,int) ;

int imgu_css_fmt_set(struct imgu_css *css,
       struct v4l2_pix_format_mplane *fmts[IPU3_CSS_QUEUES],
       struct v4l2_rect *rects[IPU3_CSS_RECTS],
       unsigned int pipe)
{
 struct v4l2_rect rect_data[IPU3_CSS_RECTS];
 struct v4l2_rect *all_rects[IPU3_CSS_RECTS];
 int i, r;
 struct imgu_css_pipe *css_pipe = &css->pipes[pipe];

 for (i = 0; i < IPU3_CSS_RECTS; i++) {
  if (rects[i])
   rect_data[i] = *rects[i];
  else
   memset(&rect_data[i], 0, sizeof(rect_data[i]));
  all_rects[i] = &rect_data[i];
 }
 r = imgu_css_fmt_try(css, fmts, all_rects, pipe);
 if (r < 0)
  return r;

 for (i = 0; i < IPU3_CSS_QUEUES; i++)
  if (imgu_css_queue_init(&css_pipe->queue[i], fmts[i],
     IPU3_CSS_QUEUE_TO_FLAGS(i)))
   return -EINVAL;
 for (i = 0; i < IPU3_CSS_RECTS; i++) {
  css_pipe->rect[i] = rect_data[i];
  if (rects[i])
   *rects[i] = rect_data[i];
 }

 return 0;
}
