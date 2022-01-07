
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_frame_interval {int interval; int pad; } ;
struct TYPE_3__ {int timeperframe; int capability; } ;
struct TYPE_4__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct file {int dummy; } ;
struct capture_priv {int src_sd; int src_sd_pad; } ;
typedef int fi ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int memset (struct v4l2_subdev_frame_interval*,int ,int) ;
 int s_frame_interval ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_subdev_frame_interval*) ;
 int video ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_s_parm(struct file *file, void *fh,
     struct v4l2_streamparm *a)
{
 struct capture_priv *priv = video_drvdata(file);
 struct v4l2_subdev_frame_interval fi;
 int ret;

 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 memset(&fi, 0, sizeof(fi));
 fi.pad = priv->src_sd_pad;
 fi.interval = a->parm.capture.timeperframe;
 ret = v4l2_subdev_call(priv->src_sd, video, s_frame_interval, &fi);
 if (ret < 0)
  return ret;

 a->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 a->parm.capture.timeperframe = fi.interval;

 return 0;
}
