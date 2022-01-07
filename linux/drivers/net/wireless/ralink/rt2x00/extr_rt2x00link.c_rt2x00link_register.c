
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {scalar_t__ watchdog_interval; int watchdog_work; int work; } ;
struct rt2x00_dev {struct link link; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ WATCHDOG_INTERVAL ;
 int rt2x00link_tuner ;
 int rt2x00link_watchdog ;

void rt2x00link_register(struct rt2x00_dev *rt2x00dev)
{
 struct link *link = &rt2x00dev->link;

 INIT_DELAYED_WORK(&link->work, rt2x00link_tuner);
 INIT_DELAYED_WORK(&link->watchdog_work, rt2x00link_watchdog);

 if (link->watchdog_interval == 0)
  link->watchdog_interval = WATCHDOG_INTERVAL;
}
