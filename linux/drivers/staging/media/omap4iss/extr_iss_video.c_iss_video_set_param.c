
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int denominator; } ;
struct TYPE_5__ {TYPE_1__ timeperframe; } ;
struct TYPE_6__ {TYPE_2__ output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_3__ parm; } ;
struct iss_video_fh {TYPE_1__ timeperframe; } ;
struct iss_video {scalar_t__ type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 struct iss_video_fh* to_iss_video_fh (void*) ;
 struct iss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
iss_video_set_param(struct file *file, void *fh, struct v4l2_streamparm *a)
{
 struct iss_video_fh *vfh = to_iss_video_fh(fh);
 struct iss_video *video = video_drvdata(file);

 if (video->type != V4L2_BUF_TYPE_VIDEO_OUTPUT ||
     video->type != a->type)
  return -EINVAL;

 if (a->parm.output.timeperframe.denominator == 0)
  a->parm.output.timeperframe.denominator = 1;

 vfh->timeperframe = a->parm.output.timeperframe;

 return 0;
}
