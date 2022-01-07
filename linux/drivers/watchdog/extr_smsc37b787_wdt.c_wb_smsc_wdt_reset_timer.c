
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IODEV_NO ;
 int close_io_config () ;
 int io_lock ;
 int open_io_config () ;
 int select_io_device (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout ;
 int wdt_timeout_value (int ) ;
 int wdt_timer_conf (int) ;

__attribute__((used)) static void wb_smsc_wdt_reset_timer(void)
{
 spin_lock(&io_lock);
 open_io_config();
 select_io_device(IODEV_NO);


 wdt_timeout_value(timeout);
 wdt_timer_conf(0x08);

 close_io_config();
 spin_unlock(&io_lock);
}
