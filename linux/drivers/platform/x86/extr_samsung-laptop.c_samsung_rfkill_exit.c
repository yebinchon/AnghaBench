
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * rfkill; } ;
struct TYPE_3__ {int * rfkill; } ;
struct samsung_laptop {TYPE_2__ bluetooth; TYPE_1__ wlan; } ;


 int rfkill_destroy (int *) ;
 int rfkill_unregister (int *) ;

__attribute__((used)) static void samsung_rfkill_exit(struct samsung_laptop *samsung)
{
 if (samsung->wlan.rfkill) {
  rfkill_unregister(samsung->wlan.rfkill);
  rfkill_destroy(samsung->wlan.rfkill);
  samsung->wlan.rfkill = ((void*)0);
 }
 if (samsung->bluetooth.rfkill) {
  rfkill_unregister(samsung->bluetooth.rfkill);
  rfkill_destroy(samsung->bluetooth.rfkill);
  samsung->bluetooth.rfkill = ((void*)0);
 }
}
