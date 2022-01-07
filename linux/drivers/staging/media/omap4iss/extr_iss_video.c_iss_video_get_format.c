
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {scalar_t__ type; } ;
struct iss_video_fh {struct v4l2_format format; } ;
struct iss_video {scalar_t__ type; int mutex; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iss_video_fh* to_iss_video_fh (void*) ;
 struct iss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
iss_video_get_format(struct file *file, void *fh, struct v4l2_format *format)
{
 struct iss_video_fh *vfh = to_iss_video_fh(fh);
 struct iss_video *video = video_drvdata(file);

 if (format->type != video->type)
  return -EINVAL;

 mutex_lock(&video->mutex);
 *format = vfh->format;
 mutex_unlock(&video->mutex);

 return 0;
}
