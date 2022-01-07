
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {int dummy; } ;
struct iss_video_fh {int queue; } ;
struct TYPE_2__ {int entity; } ;
struct iss_video {int iss; TYPE_1__ video; int type; } ;
struct file {struct v4l2_fh* private_data; } ;


 int iss_video_streamoff (struct file*,struct v4l2_fh*,int ) ;
 int kfree (struct iss_video_fh*) ;
 int omap4iss_put (int ) ;
 struct iss_video_fh* to_iss_video_fh (struct v4l2_fh*) ;
 int v4l2_fh_del (struct v4l2_fh*) ;
 int v4l2_fh_exit (struct v4l2_fh*) ;
 int v4l2_pipeline_pm_use (int *,int ) ;
 int vb2_queue_release (int *) ;
 struct iss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int iss_video_release(struct file *file)
{
 struct iss_video *video = video_drvdata(file);
 struct v4l2_fh *vfh = file->private_data;
 struct iss_video_fh *handle = to_iss_video_fh(vfh);


 iss_video_streamoff(file, vfh, video->type);

 v4l2_pipeline_pm_use(&video->video.entity, 0);


 vb2_queue_release(&handle->queue);

 v4l2_fh_del(vfh);
 v4l2_fh_exit(vfh);
 kfree(handle);
 file->private_data = ((void*)0);

 omap4iss_put(video->iss);

 return 0;
}
