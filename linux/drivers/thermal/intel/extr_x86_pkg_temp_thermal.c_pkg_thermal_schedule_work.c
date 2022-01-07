
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 unsigned long msecs_to_jiffies (int ) ;
 int notify_delay_ms ;
 int schedule_delayed_work_on (int,struct delayed_work*,unsigned long) ;

__attribute__((used)) static void pkg_thermal_schedule_work(int cpu, struct delayed_work *work)
{
 unsigned long ms = msecs_to_jiffies(notify_delay_ms);

 schedule_delayed_work_on(cpu, work, ms);
}
