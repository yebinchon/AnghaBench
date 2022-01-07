
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long expires; } ;
struct delayed_work {TYPE_1__ timer; } ;


 int cancel_delayed_work (struct delayed_work*) ;
 long jiffies ;

__attribute__((used)) static long cw1200_suspend_work(struct delayed_work *work)
{
 int ret = cancel_delayed_work(work);
 long tmo;
 if (ret > 0) {

  tmo = work->timer.expires - jiffies;
  if (tmo < 0)
   tmo = 0;
 } else {
  tmo = -1;
 }
 return tmo;
}
