
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int cm_monitor () ;
 int schedule_work (int *) ;
 int setup_polling ;

__attribute__((used)) static void cm_monitor_poller(struct work_struct *work)
{
 cm_monitor();
 schedule_work(&setup_polling);
}
