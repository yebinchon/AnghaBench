
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; int io_addr; int supports_temp; scalar_t__ command_mode; } ;


 scalar_t__ DEBUG ;
 int ENODEV ;
 scalar_t__ debug ;
 int inb (int ) ;
 TYPE_1__ pcwd_private ;
 int pr_debug (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pcwd_get_temperature(int *temperature)
{

 if (pcwd_private.command_mode)
  return -1;

 *temperature = 0;
 if (!pcwd_private.supports_temp)
  return -ENODEV;





 spin_lock(&pcwd_private.io_lock);
 *temperature = ((inb(pcwd_private.io_addr)) * 9 / 5) + 32;
 spin_unlock(&pcwd_private.io_lock);

 if (debug >= DEBUG) {
  pr_debug("temperature is: %d F\n", *temperature);
 }

 return 0;
}
