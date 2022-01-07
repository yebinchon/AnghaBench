
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int sioaddr; } ;


 int BIT (int ) ;
 int F71808FG_FLAG_WD_EN ;
 int F71808FG_REG_WDT_CONF ;
 int SIO_F71808FG_LD_WDT ;
 int SIO_REG_ENABLE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ superio_enter (int ) ;
 int superio_exit (int ) ;
 int superio_inb (int ,int ) ;
 int superio_select (int ,int ) ;
 TYPE_1__ watchdog ;

__attribute__((used)) static bool watchdog_is_running(void)
{




 bool is_running = 1;

 mutex_lock(&watchdog.lock);
 if (superio_enter(watchdog.sioaddr))
  goto exit_unlock;
 superio_select(watchdog.sioaddr, SIO_F71808FG_LD_WDT);

 is_running = (superio_inb(watchdog.sioaddr, SIO_REG_ENABLE) & BIT(0))
  && (superio_inb(watchdog.sioaddr, F71808FG_REG_WDT_CONF)
   & BIT(F71808FG_FLAG_WD_EN));

 superio_exit(watchdog.sioaddr);

exit_unlock:
 mutex_unlock(&watchdog.lock);
 return is_running;
}
