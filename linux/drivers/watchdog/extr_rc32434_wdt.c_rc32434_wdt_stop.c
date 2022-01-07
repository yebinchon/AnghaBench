
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int io_lock; } ;
struct TYPE_3__ {int wtc; } ;


 int RC32434_WTC_EN ;
 int SET_BITS (int ,int ,int) ;
 int pr_info (char*) ;
 TYPE_2__ rc32434_wdt_device ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* wdt_reg ;

__attribute__((used)) static void rc32434_wdt_stop(void)
{
 spin_lock(&rc32434_wdt_device.io_lock);


 SET_BITS(wdt_reg->wtc, 0, 1 << RC32434_WTC_EN);

 spin_unlock(&rc32434_wdt_device.io_lock);
 pr_info("Stopped watchdog timer\n");
}
