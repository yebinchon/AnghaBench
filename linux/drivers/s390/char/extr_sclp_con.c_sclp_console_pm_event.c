
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sclp_pm_event { ____Placeholder_sclp_pm_event } sclp_pm_event ;





 int sclp_console_resume () ;
 int sclp_console_suspend () ;

void sclp_console_pm_event(enum sclp_pm_event sclp_pm_event)
{
 switch (sclp_pm_event) {
 case 130:
  sclp_console_suspend();
  break;
 case 129:
 case 128:
  sclp_console_resume();
  break;
 }
}
