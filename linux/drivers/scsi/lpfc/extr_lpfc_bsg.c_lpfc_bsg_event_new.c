
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct lpfc_bsg_event {int reg_id; int kref; int wq; int * dd_data; int wait_time_stamp; void* req_id; void* type_mask; int events_to_see; int events_to_get; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int jiffies ;
 int kref_init (int *) ;
 struct lpfc_bsg_event* kzalloc (int,int ) ;

__attribute__((used)) static struct lpfc_bsg_event *
lpfc_bsg_event_new(uint32_t ev_mask, int ev_reg_id, uint32_t ev_req_id)
{
 struct lpfc_bsg_event *evt = kzalloc(sizeof(*evt), GFP_KERNEL);

 if (!evt)
  return ((void*)0);

 INIT_LIST_HEAD(&evt->events_to_get);
 INIT_LIST_HEAD(&evt->events_to_see);
 evt->type_mask = ev_mask;
 evt->req_id = ev_req_id;
 evt->reg_id = ev_reg_id;
 evt->wait_time_stamp = jiffies;
 evt->dd_data = ((void*)0);
 init_waitqueue_head(&evt->wq);
 kref_init(&evt->kref);
 return evt;
}
