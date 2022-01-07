
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intelfb_vsync {unsigned int count; int wait; } ;
struct intelfb_info {struct intelfb_vsync vsync; } ;


 int DBG_MSG (char*) ;
 int ENODEV ;
 int ETIMEDOUT ;
 int HZ ;
 int intelfbhw_enable_irq (struct intelfb_info*) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

int intelfbhw_wait_for_vsync(struct intelfb_info *dinfo, u32 pipe)
{
 struct intelfb_vsync *vsync;
 unsigned int count;
 int ret;

 switch (pipe) {
  case 0:
   vsync = &dinfo->vsync;
   break;
  default:
   return -ENODEV;
 }

 ret = intelfbhw_enable_irq(dinfo);
 if (ret)
  return ret;

 count = vsync->count;
 ret = wait_event_interruptible_timeout(vsync->wait,
            count != vsync->count, HZ / 10);
 if (ret < 0)
  return ret;
 if (ret == 0) {
  DBG_MSG("wait_for_vsync timed out!\n");
  return -ETIMEDOUT;
 }

 return 0;
}
