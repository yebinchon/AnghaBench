
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct txentry_desc {int dummy; } ;
struct queue_entry {struct data_queue* queue; } ;
struct data_queue {TYPE_3__* rt2x00dev; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int (* write_tx_desc ) (struct queue_entry*,struct txentry_desc*) ;} ;


 int DUMP_FRAME_TX ;
 int rt2x00debug_dump_frame (TYPE_3__*,int ,struct queue_entry*) ;
 int stub1 (struct queue_entry*,struct txentry_desc*) ;

__attribute__((used)) static void rt2x00queue_write_tx_descriptor(struct queue_entry *entry,
         struct txentry_desc *txdesc)
{
 struct data_queue *queue = entry->queue;

 queue->rt2x00dev->ops->lib->write_tx_desc(entry, txdesc);





 rt2x00debug_dump_frame(queue->rt2x00dev, DUMP_FRAME_TX, entry);
}
