
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct media_entity {int dummy; } ;
struct iss_video {int dmaqueue_flags; int qlock; } ;
struct iss_pipeline {scalar_t__ stream_state; struct iss_video* output; } ;
typedef int atomic_t ;


 int ETIMEDOUT ;
 scalar_t__ ISS_PIPELINE_STREAM_SINGLESHOT ;
 scalar_t__ ISS_PIPELINE_STREAM_STOPPED ;
 int ISS_VIDEO_DMAQUEUE_UNDERRUN ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int iss_pipeline_is_last (struct media_entity*) ;
 int iss_pipeline_ready (struct iss_pipeline*) ;
 int msecs_to_jiffies (int) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct iss_pipeline* to_iss_pipeline (struct media_entity*) ;
 int wait_event_timeout (int ,int,int ) ;

int omap4iss_module_sync_idle(struct media_entity *me, wait_queue_head_t *wait,
         atomic_t *stopping)
{
 struct iss_pipeline *pipe = to_iss_pipeline(me);
 struct iss_video *video = pipe->output;
 unsigned long flags;

 if (pipe->stream_state == ISS_PIPELINE_STREAM_STOPPED ||
     (pipe->stream_state == ISS_PIPELINE_STREAM_SINGLESHOT &&
      !iss_pipeline_ready(pipe)))
  return 0;





 atomic_set(stopping, 1);
 smp_wmb();
 if (!iss_pipeline_is_last(me))
  return 0;

 spin_lock_irqsave(&video->qlock, flags);
 if (video->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_UNDERRUN) {
  spin_unlock_irqrestore(&video->qlock, flags);
  atomic_set(stopping, 0);
  smp_wmb();
  return 0;
 }
 spin_unlock_irqrestore(&video->qlock, flags);
 if (!wait_event_timeout(*wait, !atomic_read(stopping),
    msecs_to_jiffies(1000))) {
  atomic_set(stopping, 0);
  smp_wmb();
  return -ETIMEDOUT;
 }

 return 0;
}
