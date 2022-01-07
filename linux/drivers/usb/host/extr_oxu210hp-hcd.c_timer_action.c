
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long expires; } ;
struct oxu_hcd {TYPE_1__ watchdog; int actions; } ;
typedef enum ehci_timer_action { ____Placeholder_ehci_timer_action } ehci_timer_action ;


 unsigned long EHCI_ASYNC_JIFFIES ;
 unsigned long EHCI_IAA_JIFFIES ;
 unsigned long EHCI_IO_JIFFIES ;
 unsigned long EHCI_SHRINK_JIFFIES ;




 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,unsigned long) ;
 int test_and_set_bit (int,int *) ;
 scalar_t__ timer_pending (TYPE_1__*) ;

__attribute__((used)) static inline void timer_action(struct oxu_hcd *oxu,
     enum ehci_timer_action action)
{
 if (!test_and_set_bit(action, &oxu->actions)) {
  unsigned long t;

  switch (action) {
  case 129:
   t = EHCI_IAA_JIFFIES;
   break;
  case 128:
   t = EHCI_IO_JIFFIES;
   break;
  case 131:
   t = EHCI_ASYNC_JIFFIES;
   break;
  case 130:
  default:
   t = EHCI_SHRINK_JIFFIES;
   break;
  }
  t += jiffies;





  if (action != 129
    && t > oxu->watchdog.expires
    && timer_pending(&oxu->watchdog))
   return;
  mod_timer(&oxu->watchdog, t);
 }
}
