
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zfcp_fc_event {int code; int list; int data; } ;
struct TYPE_2__ {int work; int list_lock; int list; } ;
struct zfcp_adapter {TYPE_1__ events; int work_queue; } ;
typedef enum fc_host_event_code { ____Placeholder_fc_host_event_code } fc_host_event_code ;


 int GFP_ATOMIC ;
 struct zfcp_fc_event* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void zfcp_fc_enqueue_event(struct zfcp_adapter *adapter,
      enum fc_host_event_code event_code, u32 event_data)
{
 struct zfcp_fc_event *event;

 event = kmalloc(sizeof(struct zfcp_fc_event), GFP_ATOMIC);
 if (!event)
  return;

 event->code = event_code;
 event->data = event_data;

 spin_lock(&adapter->events.list_lock);
 list_add_tail(&event->list, &adapter->events.list);
 spin_unlock(&adapter->events.list_lock);

 queue_work(adapter->work_queue, &adapter->events.work);
}
