
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct q6v5 {scalar_t__ rmb_base; } ;
typedef scalar_t__ s32 ;


 int ETIMEDOUT ;
 scalar_t__ RMB_MBA_STATUS_REG ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int q6v5_rmb_mba_wait(struct q6v5 *qproc, u32 status, int ms)
{

 unsigned long timeout;
 s32 val;

 timeout = jiffies + msecs_to_jiffies(ms);
 for (;;) {
  val = readl(qproc->rmb_base + RMB_MBA_STATUS_REG);
  if (val < 0)
   break;

  if (!status && val)
   break;
  else if (status && val == status)
   break;

  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;

  msleep(1);
 }

 return val;
}
