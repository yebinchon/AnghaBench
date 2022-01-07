
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {int flags; } ;
struct queue_entry {TYPE_1__* queue; int entry_idx; scalar_t__ last_action; int flags; } ;
struct TYPE_2__ {int qid; int rt2x00dev; } ;


 int DEVICE_STATE_FLUSHING ;
 int ENTRY_DATA_STATUS_PENDING ;
 int jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int rt2x00_dbg (int ,char*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int time_after (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool rt2800_entry_txstatus_timeout(struct rt2x00_dev *rt2x00dev,
       struct queue_entry *entry)
{
 bool ret;
 unsigned long tout;

 if (!test_bit(ENTRY_DATA_STATUS_PENDING, &entry->flags))
  return 0;

 if (test_bit(DEVICE_STATE_FLUSHING, &rt2x00dev->flags))
  tout = msecs_to_jiffies(50);
 else
  tout = msecs_to_jiffies(2000);

 ret = time_after(jiffies, entry->last_action + tout);
 if (unlikely(ret))
  rt2x00_dbg(entry->queue->rt2x00dev,
      "TX status timeout for entry %d in queue %d\n",
      entry->entry_idx, entry->queue->qid);
 return ret;
}
