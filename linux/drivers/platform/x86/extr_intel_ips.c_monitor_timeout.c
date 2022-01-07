
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ips_driver {int monitor; } ;


 struct ips_driver* from_timer (int ,struct timer_list*,int ) ;
 struct ips_driver* ips ;
 int timer ;
 int wake_up_process (int ) ;

__attribute__((used)) static void monitor_timeout(struct timer_list *t)
{
 struct ips_driver *ips = from_timer(ips, t, timer);
 wake_up_process(ips->monitor);
}
