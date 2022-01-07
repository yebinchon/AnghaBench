
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct iss_video {int mutex; } ;
typedef int fmt ;


 int EINVAL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 struct v4l2_subdev* iss_video_remote_subdev (struct iss_video*,int *) ;
 int memset (struct v4l2_subdev_format*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int
__iss_video_get_format(struct iss_video *video,
         struct v4l2_mbus_framefmt *format)
{
 struct v4l2_subdev_format fmt;
 struct v4l2_subdev *subdev;
 u32 pad;
 int ret;

 subdev = iss_video_remote_subdev(video, &pad);
 if (!subdev)
  return -EINVAL;

 memset(&fmt, 0, sizeof(fmt));
 fmt.pad = pad;
 fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;

 mutex_lock(&video->mutex);
 ret = v4l2_subdev_call(subdev, pad, get_fmt, ((void*)0), &fmt);
 mutex_unlock(&video->mutex);

 if (ret)
  return ret;

 *format = fmt.format;
 return 0;
}
