
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251 {int * mbox_ptr; } ;
struct event_mailbox {int dummy; } ;


 int ACX_REG_INTERRUPT_TRIG ;
 int DEBUG_EVENT ;
 int EINVAL ;
 int INTR_TRIG_EVENT_ACK ;
 int wl1251_debug (int ,char*,int) ;
 int wl1251_event_process (struct wl1251*,struct event_mailbox*) ;
 int wl1251_mem_read (struct wl1251*,int ,struct event_mailbox*,int) ;
 int wl1251_reg_write32 (struct wl1251*,int ,int ) ;

int wl1251_event_handle(struct wl1251 *wl, u8 mbox_num)
{
 struct event_mailbox mbox;
 int ret;

 wl1251_debug(DEBUG_EVENT, "EVENT on mbox %d", mbox_num);

 if (mbox_num > 1)
  return -EINVAL;


 wl1251_mem_read(wl, wl->mbox_ptr[mbox_num], &mbox,
       sizeof(struct event_mailbox));


 ret = wl1251_event_process(wl, &mbox);
 if (ret < 0)
  return ret;


 wl1251_reg_write32(wl, ACX_REG_INTERRUPT_TRIG, INTR_TRIG_EVENT_ACK);

 return 0;
}
