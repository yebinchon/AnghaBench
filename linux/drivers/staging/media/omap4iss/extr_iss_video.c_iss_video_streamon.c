
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct media_graph {int dummy; } ;
struct TYPE_9__ {int mdev; } ;
struct media_entity {TYPE_1__ graph_obj; int pipe; } ;
struct TYPE_10__ {int bytesperline; } ;
struct TYPE_11__ {TYPE_2__ pix; } ;
struct TYPE_12__ {TYPE_3__ fmt; } ;
struct iss_video_fh {int queue; int timeperframe; TYPE_4__ format; } ;
struct TYPE_13__ {struct media_entity entity; } ;
struct iss_pipeline {int state; int ent_enum; struct iss_video* input; int frame_number; int max_timeperframe; int lock; struct iss_video* output; int pipe; scalar_t__ external_bpp; scalar_t__ external_rate; int * external; } ;
struct iss_video {int type; int bpl_padding; int error; int stream_lock; int * queue; TYPE_7__* iss; TYPE_5__ video; int qlock; int dmaqueue_flags; int dmaqueue; int bpl_value; struct iss_pipeline pipe; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
typedef enum iss_pipeline_state { ____Placeholder_iss_pipeline_state } iss_pipeline_state ;
struct TYPE_15__ {TYPE_6__* pdata; } ;
struct TYPE_14__ {int (* set_constraints ) (TYPE_7__*,int) ;} ;


 int EINVAL ;
 int EPIPE ;
 int INIT_LIST_HEAD (int *) ;
 int ISS_PIPELINE_IDLE_INPUT ;
 int ISS_PIPELINE_IDLE_OUTPUT ;
 int ISS_PIPELINE_STREAM ;
 int ISS_PIPELINE_STREAM_CONTINUOUS ;
 int ISS_PIPELINE_STREAM_INPUT ;
 int ISS_PIPELINE_STREAM_OUTPUT ;
 int ISS_VIDEO_DMAQUEUE_UNDERRUN ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int atomic_set (int *,int) ;
 int iss_video_check_format (struct iss_video*,struct iss_video_fh*) ;
 struct iss_video* iss_video_far_end (struct iss_video*) ;
 scalar_t__ list_empty (int *) ;
 int media_entity_enum_cleanup (int *) ;
 int media_entity_enum_init (int *,int ) ;
 int media_entity_enum_set (int *,struct media_entity*) ;
 int media_graph_walk_cleanup (struct media_graph*) ;
 int media_graph_walk_init (struct media_graph*,int ) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;
 int media_pipeline_start (struct media_entity*,int *) ;
 int media_pipeline_stop (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap4iss_pipeline_set_stream (struct iss_pipeline*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_7__*,int) ;
 int stub2 (TYPE_7__*,int) ;
 struct iss_pipeline* to_iss_pipeline (struct media_entity*) ;
 struct iss_video_fh* to_iss_video_fh (void*) ;
 int vb2_streamoff (int *,int) ;
 int vb2_streamon (int *,int) ;
 struct iss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
iss_video_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
{
 struct iss_video_fh *vfh = to_iss_video_fh(fh);
 struct iss_video *video = video_drvdata(file);
 struct media_graph graph;
 struct media_entity *entity = &video->video.entity;
 enum iss_pipeline_state state;
 struct iss_pipeline *pipe;
 struct iss_video *far_end;
 unsigned long flags;
 int ret;

 if (type != video->type)
  return -EINVAL;

 mutex_lock(&video->stream_lock);





 pipe = entity->pipe
      ? to_iss_pipeline(entity) : &video->pipe;
 pipe->external = ((void*)0);
 pipe->external_rate = 0;
 pipe->external_bpp = 0;

 ret = media_entity_enum_init(&pipe->ent_enum, entity->graph_obj.mdev);
 if (ret)
  goto err_graph_walk_init;

 ret = media_graph_walk_init(&graph, entity->graph_obj.mdev);
 if (ret)
  goto err_graph_walk_init;

 if (video->iss->pdata->set_constraints)
  video->iss->pdata->set_constraints(video->iss, 1);

 ret = media_pipeline_start(entity, &pipe->pipe);
 if (ret < 0)
  goto err_media_pipeline_start;

 media_graph_walk_start(&graph, entity);
 while ((entity = media_graph_walk_next(&graph)))
  media_entity_enum_set(&pipe->ent_enum, entity);





 ret = iss_video_check_format(video, vfh);
 if (ret < 0)
  goto err_iss_video_check_format;

 video->bpl_padding = ret;
 video->bpl_value = vfh->format.fmt.pix.bytesperline;





 far_end = iss_video_far_end(video);

 if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  state = ISS_PIPELINE_STREAM_OUTPUT | ISS_PIPELINE_IDLE_OUTPUT;
  pipe->input = far_end;
  pipe->output = video;
 } else {
  if (!far_end) {
   ret = -EPIPE;
   goto err_iss_video_check_format;
  }

  state = ISS_PIPELINE_STREAM_INPUT | ISS_PIPELINE_IDLE_INPUT;
  pipe->input = video;
  pipe->output = far_end;
 }

 spin_lock_irqsave(&pipe->lock, flags);
 pipe->state &= ~ISS_PIPELINE_STREAM;
 pipe->state |= state;
 spin_unlock_irqrestore(&pipe->lock, flags);






 if (video->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
  pipe->max_timeperframe = vfh->timeperframe;

 video->queue = &vfh->queue;
 INIT_LIST_HEAD(&video->dmaqueue);
 video->error = 0;
 atomic_set(&pipe->frame_number, -1);

 ret = vb2_streamon(&vfh->queue, type);
 if (ret < 0)
  goto err_iss_video_check_format;






 if (!pipe->input) {
  unsigned long flags;

  ret = omap4iss_pipeline_set_stream(pipe,
           ISS_PIPELINE_STREAM_CONTINUOUS);
  if (ret < 0)
   goto err_omap4iss_set_stream;
  spin_lock_irqsave(&video->qlock, flags);
  if (list_empty(&video->dmaqueue))
   video->dmaqueue_flags |= ISS_VIDEO_DMAQUEUE_UNDERRUN;
  spin_unlock_irqrestore(&video->qlock, flags);
 }

 media_graph_walk_cleanup(&graph);

 mutex_unlock(&video->stream_lock);

 return 0;

err_omap4iss_set_stream:
 vb2_streamoff(&vfh->queue, type);
err_iss_video_check_format:
 media_pipeline_stop(&video->video.entity);
err_media_pipeline_start:
 if (video->iss->pdata->set_constraints)
  video->iss->pdata->set_constraints(video->iss, 0);
 video->queue = ((void*)0);

 media_graph_walk_cleanup(&graph);

err_graph_walk_init:
 media_entity_enum_cleanup(&pipe->ent_enum);

 mutex_unlock(&video->stream_lock);

 return ret;
}
