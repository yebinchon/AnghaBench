
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct nvmet_ctrl {int async_event_work; int lock; int async_events; } ;
struct nvmet_async_event {int entry; void* log_page; void* event_info; void* event_type; } ;


 int GFP_KERNEL ;
 struct nvmet_async_event* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
  u8 event_info, u8 log_page)
{
 struct nvmet_async_event *aen;

 aen = kmalloc(sizeof(*aen), GFP_KERNEL);
 if (!aen)
  return;

 aen->event_type = event_type;
 aen->event_info = event_info;
 aen->log_page = log_page;

 mutex_lock(&ctrl->lock);
 list_add_tail(&aen->entry, &ctrl->async_events);
 mutex_unlock(&ctrl->lock);

 schedule_work(&ctrl->async_event_work);
}
