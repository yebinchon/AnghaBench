
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ioctl_ops; int release; int vfl_type; int name; int * fops; int entity; } ;
struct TYPE_4__ {int stream_state; int lock; } ;
struct TYPE_6__ {int flags; } ;
struct iss_video {int type; TYPE_2__ video; TYPE_1__ pipe; int * ops; int stream_lock; int active; int mutex; int qlock; TYPE_3__ pad; } ;


 int EINVAL ;
 int ISS_PIPELINE_STREAM_STOPPED ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;


 int VFL_TYPE_GRABBER ;
 int atomic_set (int *,int ) ;
 int iss_video_dummy_ops ;
 int iss_video_fops ;
 int iss_video_ioctl_ops ;
 int media_entity_pads_init (int *,int,TYPE_3__*) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char const*,char const*) ;
 int spin_lock_init (int *) ;
 int video_device_release_empty ;
 int video_set_drvdata (TYPE_2__*,struct iss_video*) ;

int omap4iss_video_init(struct iss_video *video, const char *name)
{
 const char *direction;
 int ret;

 switch (video->type) {
 case 129:
  direction = "output";
  video->pad.flags = MEDIA_PAD_FL_SINK;
  break;
 case 128:
  direction = "input";
  video->pad.flags = MEDIA_PAD_FL_SOURCE;
  break;

 default:
  return -EINVAL;
 }

 ret = media_entity_pads_init(&video->video.entity, 1, &video->pad);
 if (ret < 0)
  return ret;

 spin_lock_init(&video->qlock);
 mutex_init(&video->mutex);
 atomic_set(&video->active, 0);

 spin_lock_init(&video->pipe.lock);
 mutex_init(&video->stream_lock);


 if (!video->ops)
  video->ops = &iss_video_dummy_ops;

 video->video.fops = &iss_video_fops;
 snprintf(video->video.name, sizeof(video->video.name),
   "OMAP4 ISS %s %s", name, direction);
 video->video.vfl_type = VFL_TYPE_GRABBER;
 video->video.release = video_device_release_empty;
 video->video.ioctl_ops = &iss_video_ioctl_ops;
 video->pipe.stream_state = ISS_PIPELINE_STREAM_STOPPED;

 video_set_drvdata(&video->video, video);

 return 0;
}
