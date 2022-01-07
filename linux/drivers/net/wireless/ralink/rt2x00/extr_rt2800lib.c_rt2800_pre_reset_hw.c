
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {struct data_queue* bcn; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int sta_ids; int ** wcid_to_sta; } ;
struct queue_entry {int flags; } ;
struct data_queue {int limit; struct queue_entry* entries; } ;


 int ENTRY_BCN_ASSIGNED ;
 int WCID_END ;
 int WCID_START ;
 int __clear_bit (int,int ) ;
 int clear_bit (int ,int *) ;

void rt2800_pre_reset_hw(struct rt2x00_dev *rt2x00dev)
{
 struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
 struct data_queue *queue = rt2x00dev->bcn;
 struct queue_entry *entry;
 int i, wcid;

 for (wcid = WCID_START; wcid < WCID_END; wcid++) {
  drv_data->wcid_to_sta[wcid - WCID_START] = ((void*)0);
  __clear_bit(wcid - WCID_START, drv_data->sta_ids);
 }

 for (i = 0; i < queue->limit; i++) {
  entry = &queue->entries[i];
  clear_bit(ENTRY_BCN_ASSIGNED, &entry->flags);
 }
}
