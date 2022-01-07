
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl1271 {TYPE_1__* ops; int mbox_size; int mbox; int * mbox_ptr; } ;
struct TYPE_2__ {int (* process_mailbox_events ) (struct wl1271*) ;int (* ack_event ) (struct wl1271*) ;} ;


 int DEBUG_EVENT ;
 int EINVAL ;
 int stub1 (struct wl1271*) ;
 int stub2 (struct wl1271*) ;
 int wl1271_debug (int ,char*,int) ;
 int wlcore_read (struct wl1271*,int ,int ,int ,int) ;

int wl1271_event_handle(struct wl1271 *wl, u8 mbox_num)
{
 int ret;

 wl1271_debug(DEBUG_EVENT, "EVENT on mbox %d", mbox_num);

 if (mbox_num > 1)
  return -EINVAL;


 ret = wlcore_read(wl, wl->mbox_ptr[mbox_num], wl->mbox,
     wl->mbox_size, 0);
 if (ret < 0)
  return ret;


 ret = wl->ops->process_mailbox_events(wl);
 if (ret < 0)
  return ret;





 ret = wl->ops->ack_event(wl);

 return ret;
}
