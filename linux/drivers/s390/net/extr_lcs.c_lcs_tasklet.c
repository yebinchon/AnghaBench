
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_channel {int buf_idx; scalar_t__ state; size_t io_idx; int wait_q; TYPE_1__* ccwdev; struct lcs_buffer* iob; } ;
struct lcs_buffer {scalar_t__ state; int (* callback ) (struct lcs_channel*,struct lcs_buffer*) ;} ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ LCS_BUF_STATE_PROCESSED ;
 scalar_t__ LCS_BUF_STATE_READY ;
 scalar_t__ LCS_CH_STATE_STOPPED ;
 scalar_t__ LCS_CH_STATE_SUSPENDED ;
 int LCS_DBF_TEXT_ (int,int ,char*,int ) ;
 int LCS_NUM_BUFFS ;
 int __lcs_resume_channel (struct lcs_channel*) ;
 int dev_name (int *) ;
 int get_ccwdev_lock (TYPE_1__*) ;
 int lcs_start_channel (struct lcs_channel*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct lcs_channel*,struct lcs_buffer*) ;
 int trace ;
 int wake_up (int *) ;

__attribute__((used)) static void
lcs_tasklet(unsigned long data)
{
 unsigned long flags;
 struct lcs_channel *channel;
 struct lcs_buffer *iob;
 int buf_idx;

 channel = (struct lcs_channel *) data;
 LCS_DBF_TEXT_(5, trace, "tlet%s", dev_name(&channel->ccwdev->dev));


 iob = channel->iob;
 buf_idx = channel->buf_idx;
 while (iob[buf_idx].state == LCS_BUF_STATE_PROCESSED) {

  if (iob[buf_idx].callback != ((void*)0))
   iob[buf_idx].callback(channel, iob + buf_idx);
  buf_idx = (buf_idx + 1) & (LCS_NUM_BUFFS - 1);
 }
 channel->buf_idx = buf_idx;

 if (channel->state == LCS_CH_STATE_STOPPED)
  lcs_start_channel(channel);
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 if (channel->state == LCS_CH_STATE_SUSPENDED &&
     channel->iob[channel->io_idx].state == LCS_BUF_STATE_READY)
  __lcs_resume_channel(channel);
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);


 wake_up(&channel->wait_q);
}
