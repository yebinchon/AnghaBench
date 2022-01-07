
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_channel {int ccwdev; TYPE_1__* ccws; struct lcs_buffer* iob; } ;
struct lcs_buffer {scalar_t__ state; int count; } ;
struct TYPE_2__ {int count; } ;


 int BUG_ON (int) ;
 scalar_t__ LCS_BUF_STATE_LOCKED ;
 scalar_t__ LCS_BUF_STATE_PROCESSED ;
 scalar_t__ LCS_BUF_STATE_READY ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int __lcs_ready_buffer_bits (struct lcs_channel*,int) ;
 int __lcs_resume_channel (struct lcs_channel*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int trace ;

__attribute__((used)) static int
lcs_ready_buffer(struct lcs_channel *channel, struct lcs_buffer *buffer)
{
 unsigned long flags;
 int index, rc;

 LCS_DBF_TEXT(5, trace, "rdybuff");
 BUG_ON(buffer->state != LCS_BUF_STATE_LOCKED &&
        buffer->state != LCS_BUF_STATE_PROCESSED);
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 buffer->state = LCS_BUF_STATE_READY;
 index = buffer - channel->iob;

 channel->ccws[index].count = buffer->count;

 __lcs_ready_buffer_bits(channel, index);
 rc = __lcs_resume_channel(channel);
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);
 return rc;
}
