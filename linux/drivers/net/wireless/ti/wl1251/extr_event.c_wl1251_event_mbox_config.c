
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {scalar_t__* mbox_ptr; } ;
struct event_mailbox {int dummy; } ;


 int DEBUG_EVENT ;
 int REG_EVENT_MAILBOX_PTR ;
 int wl1251_debug (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ wl1251_reg_read32 (struct wl1251*,int ) ;

void wl1251_event_mbox_config(struct wl1251 *wl)
{
 wl->mbox_ptr[0] = wl1251_reg_read32(wl, REG_EVENT_MAILBOX_PTR);
 wl->mbox_ptr[1] = wl->mbox_ptr[0] + sizeof(struct event_mailbox);

 wl1251_debug(DEBUG_EVENT, "MBOX ptrs: 0x%x 0x%x",
       wl->mbox_ptr[0], wl->mbox_ptr[1]);
}
