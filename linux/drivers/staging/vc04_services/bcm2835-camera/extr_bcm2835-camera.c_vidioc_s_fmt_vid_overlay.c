
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct bm2835_mmal_dev {TYPE_2__** component; int overlay; } ;
struct TYPE_4__ {int * input; scalar_t__ enabled; } ;


 size_t COMP_PREVIEW ;
 int set_overlay_params (struct bm2835_mmal_dev*,int *) ;
 struct bm2835_mmal_dev* video_drvdata (struct file*) ;
 int vidioc_try_fmt_vid_overlay (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_overlay(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct bm2835_mmal_dev *dev = video_drvdata(file);

 vidioc_try_fmt_vid_overlay(file, priv, f);

 dev->overlay = f->fmt.win;
 if (dev->component[COMP_PREVIEW]->enabled) {
  set_overlay_params(dev,
       &dev->component[COMP_PREVIEW]->input[0]);
 }

 return 0;
}
