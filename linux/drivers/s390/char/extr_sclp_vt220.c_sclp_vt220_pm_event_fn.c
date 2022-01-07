
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_register {int dummy; } ;
typedef enum sclp_pm_event { ____Placeholder_sclp_pm_event } sclp_pm_event ;





 int sclp_vt220_resume () ;
 int sclp_vt220_suspend () ;

__attribute__((used)) static void sclp_vt220_pm_event_fn(struct sclp_register *reg,
       enum sclp_pm_event sclp_pm_event)
{
 switch (sclp_pm_event) {
 case 130:
  sclp_vt220_suspend();
  break;
 case 129:
 case 128:
  sclp_vt220_resume();
  break;
 }
}
