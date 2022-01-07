
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct sdebug_queue {int dummy; } ;
struct scsi_cmnd {int request; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int blk_mq_unique_tag (int ) ;
 scalar_t__ blk_mq_unique_tag_to_hwq (int ) ;
 int pr_debug (char*,int ,scalar_t__) ;
 struct sdebug_queue* sdebug_q_arr ;
 scalar_t__ submit_queues ;

__attribute__((used)) static struct sdebug_queue *get_queue(struct scsi_cmnd *cmnd)
{
 u32 tag = blk_mq_unique_tag(cmnd->request);
 u16 hwq = blk_mq_unique_tag_to_hwq(tag);

 pr_debug("tag=%#x, hwq=%d\n", tag, hwq);
 if (WARN_ON_ONCE(hwq >= submit_queues))
  hwq = 0;
 return sdebug_q_arr + hwq;
}
