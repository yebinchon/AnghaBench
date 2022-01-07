
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int io_lock; } ;
struct TYPE_3__ {int wtcount; } ;


 TYPE_2__ rc32434_wdt_device ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* wdt_reg ;
 int writel (int ,int *) ;

__attribute__((used)) static void rc32434_wdt_ping(void)
{
 spin_lock(&rc32434_wdt_device.io_lock);
 writel(0, &wdt_reg->wtcount);
 spin_unlock(&rc32434_wdt_device.io_lock);
}
