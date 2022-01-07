
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; int io_addr; int supports_temp; } ;


 scalar_t__ DEBUG ;
 int ENODEV ;
 scalar_t__ debug ;
 int inb_p (int ) ;
 TYPE_1__ pcipcwd_private ;
 int pr_debug (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pcipcwd_get_temperature(int *temperature)
{
 *temperature = 0;
 if (!pcipcwd_private.supports_temp)
  return -ENODEV;

 spin_lock(&pcipcwd_private.io_lock);
 *temperature = inb_p(pcipcwd_private.io_addr);
 spin_unlock(&pcipcwd_private.io_lock);





 *temperature = (*temperature * 9 / 5) + 32;

 if (debug >= DEBUG) {
  pr_debug("temperature is: %d F\n", *temperature);
 }

 return 0;
}
