
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int sioaddr; } ;


 int F71808FG_FLAG_WD_EN ;
 int F71808FG_REG_WDT_CONF ;
 int SIO_F71808FG_LD_WDT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int superio_clear_bit (int ,int ,int ) ;
 int superio_enter (int ) ;
 int superio_exit (int ) ;
 int superio_select (int ,int ) ;
 TYPE_1__ watchdog ;

__attribute__((used)) static int watchdog_stop(void)
{
 int err = 0;

 mutex_lock(&watchdog.lock);
 err = superio_enter(watchdog.sioaddr);
 if (err)
  goto exit_unlock;
 superio_select(watchdog.sioaddr, SIO_F71808FG_LD_WDT);

 superio_clear_bit(watchdog.sioaddr, F71808FG_REG_WDT_CONF,
   F71808FG_FLAG_WD_EN);

 superio_exit(watchdog.sioaddr);

exit_unlock:
 mutex_unlock(&watchdog.lock);

 return err;
}
