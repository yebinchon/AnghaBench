
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev_selection {int target; int r; int pad; int flags; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_selection {int target; int r; int flags; } ;
struct iss_video {int mutex; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOIOCTLCMD ;
 int ENOTTY ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_subdev* iss_video_remote_subdev (struct iss_video*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_selection ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_selection*) ;
 struct iss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
iss_video_set_selection(struct file *file, void *fh, struct v4l2_selection *sel)
{
 struct iss_video *video = video_drvdata(file);
 struct v4l2_subdev *subdev;
 struct v4l2_subdev_selection sdsel = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .target = sel->target,
  .flags = sel->flags,
  .r = sel->r,
 };
 u32 pad;
 int ret;

 switch (sel->target) {
 case 128:
  if (video->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 case 129:
  if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }
 subdev = iss_video_remote_subdev(video, &pad);
 if (subdev == ((void*)0))
  return -EINVAL;

 sdsel.pad = pad;
 mutex_lock(&video->mutex);
 ret = v4l2_subdev_call(subdev, pad, set_selection, ((void*)0), &sdsel);
 mutex_unlock(&video->mutex);
 if (!ret)
  sel->r = sdsel.r;

 return ret == -ENOIOCTLCMD ? -ENOTTY : ret;
}
