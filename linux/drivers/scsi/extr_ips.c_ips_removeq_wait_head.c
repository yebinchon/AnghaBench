
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int * host_scribble; } ;
struct TYPE_3__ {int count; struct scsi_cmnd* tail; struct scsi_cmnd* head; } ;
typedef TYPE_1__ ips_wait_queue_entry_t ;


 int METHOD_TRACE (char*,int) ;

__attribute__((used)) static struct scsi_cmnd *ips_removeq_wait_head(ips_wait_queue_entry_t *queue)
{
 struct scsi_cmnd *item;

 METHOD_TRACE("ips_removeq_wait_head", 1);

 item = queue->head;

 if (!item) {
  return (((void*)0));
 }

 queue->head = (struct scsi_cmnd *) item->host_scribble;
 item->host_scribble = ((void*)0);

 if (queue->tail == item)
  queue->tail = ((void*)0);

 queue->count--;

 return (item);
}
