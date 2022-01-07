
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int dummy; } ;
struct TYPE_2__ {int pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct iss_video_fh {struct v4l2_format format; } ;
struct iss_video {scalar_t__ type; int mutex; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int iss_video_mbus_to_pix (struct iss_video*,struct v4l2_mbus_framefmt*,int *) ;
 int iss_video_pix_to_mbus (int *,struct v4l2_mbus_framefmt*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iss_video_fh* to_iss_video_fh (void*) ;
 struct iss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
iss_video_set_format(struct file *file, void *fh, struct v4l2_format *format)
{
 struct iss_video_fh *vfh = to_iss_video_fh(fh);
 struct iss_video *video = video_drvdata(file);
 struct v4l2_mbus_framefmt fmt;

 if (format->type != video->type)
  return -EINVAL;

 mutex_lock(&video->mutex);





 iss_video_pix_to_mbus(&format->fmt.pix, &fmt);
 iss_video_mbus_to_pix(video, &fmt, &format->fmt.pix);

 vfh->format = *format;

 mutex_unlock(&video->mutex);
 return 0;
}
