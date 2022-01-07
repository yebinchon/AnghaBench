
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {int dummy; } ;
struct TYPE_2__ {int OMR; } ;


 unsigned long HZ ;
 unsigned long KERNEL_BOOTING ;
 unsigned long KERNEL_UP_AND_RUNNING ;
 TYPE_1__ MUnit ;
 unsigned long SOFT_RESET_TIME ;
 unsigned long jiffies ;
 int schedule () ;
 unsigned long src_readl (struct aac_dev*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static bool aac_is_ctrl_up_and_running(struct aac_dev *dev)
{
 bool ctrl_up = 1;
 unsigned long status, start;
 bool is_up = 0;

 start = jiffies;
 do {
  schedule();
  status = src_readl(dev, MUnit.OMR);

  if (status == 0xffffffff)
   status = 0;

  if (status & KERNEL_BOOTING) {
   start = jiffies;
   continue;
  }

  if (time_after(jiffies, start+HZ*SOFT_RESET_TIME)) {
   ctrl_up = 0;
   break;
  }

  is_up = status & KERNEL_UP_AND_RUNNING;

 } while (!is_up);

 return ctrl_up;
}
