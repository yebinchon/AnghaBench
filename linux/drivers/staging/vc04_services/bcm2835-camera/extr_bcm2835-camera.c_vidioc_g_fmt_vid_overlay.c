
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct bm2835_mmal_dev {int overlay; } ;


 struct bm2835_mmal_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_overlay(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct bm2835_mmal_dev *dev = video_drvdata(file);

 f->fmt.win = dev->overlay;

 return 0;
}
