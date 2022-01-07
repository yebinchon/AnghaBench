
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; scalar_t__ runtime_reg; } ;


 scalar_t__ GP60 ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 TYPE_1__ sch311x_wdt_data ;
 int sch311x_wdt_set_timeout (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout ;

__attribute__((used)) static void sch311x_wdt_start(void)
{
 unsigned char t;

 spin_lock(&sch311x_wdt_data.io_lock);


 sch311x_wdt_set_timeout(timeout);
 t = inb(sch311x_wdt_data.runtime_reg + GP60);
 outb((t & ~0x0d) | 0x0c, sch311x_wdt_data.runtime_reg + GP60);

 spin_unlock(&sch311x_wdt_data.io_lock);

}
