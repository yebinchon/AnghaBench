
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int * mbox_ptr; } ;
typedef int events_vector ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int wl1251_mem_read (struct wl1251*,int ,int*,int) ;

int wl1251_event_wait(struct wl1251 *wl, u32 mask, int timeout_ms)
{
 u32 events_vector, event;
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(timeout_ms);

 do {
  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;

  msleep(1);


  wl1251_mem_read(wl, wl->mbox_ptr[0], &events_vector,
    sizeof(events_vector));
  event = events_vector & mask;
  wl1251_mem_read(wl, wl->mbox_ptr[1], &events_vector,
    sizeof(events_vector));
  event |= events_vector & mask;
 } while (!event);

 return 0;
}
