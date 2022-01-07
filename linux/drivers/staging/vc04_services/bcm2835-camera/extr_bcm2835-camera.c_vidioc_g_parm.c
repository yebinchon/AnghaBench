
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int readbuffers; int timeperframe; int capability; } ;
struct TYPE_5__ {TYPE_3__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int timeperframe; } ;
struct bm2835_mmal_dev {TYPE_1__ capture; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 struct bm2835_mmal_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_parm(struct file *file, void *priv,
    struct v4l2_streamparm *parm)
{
 struct bm2835_mmal_dev *dev = video_drvdata(file);

 if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 parm->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 parm->parm.capture.timeperframe = dev->capture.timeperframe;
 parm->parm.capture.readbuffers = 1;
 return 0;
}
