
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int user_cap; } ;
struct TYPE_3__ {int user_mah; } ;
struct ab8500_fg {int fg_periodic_work; int fg_wq; TYPE_2__ flags; TYPE_1__ bat_cap; } ;
typedef int ssize_t ;


 int kstrtoul (char const*,int,unsigned long*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static ssize_t charge_now_store(struct ab8500_fg *di, const char *buf,
     size_t count)
{
 unsigned long charge_now;
 int ret;

 ret = kstrtoul(buf, 10, &charge_now);
 if (ret)
  return ret;

 di->bat_cap.user_mah = (int) charge_now;
 di->flags.user_cap = 1;
 queue_delayed_work(di->fg_wq, &di->fg_periodic_work, 0);
 return count;
}
