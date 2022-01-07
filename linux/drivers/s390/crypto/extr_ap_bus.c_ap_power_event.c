
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;




 int ap_bus_resume () ;
 int ap_bus_suspend () ;

__attribute__((used)) static int ap_power_event(struct notifier_block *this, unsigned long event,
     void *ptr)
{
 switch (event) {
 case 131:
 case 128:
  ap_bus_suspend();
  break;
 case 130:
 case 129:
  ap_bus_resume();
  break;
 default:
  break;
 }
 return NOTIFY_DONE;
}
