
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IODEV_NO ;
 int close_io_config () ;
 int gpio_bit12 (int) ;
 int gpio_bit13 (int) ;
 int io_lock ;
 int open_io_config () ;
 int select_io_device (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_timeout_value (int) ;
 int wdt_timer_conf (int) ;
 int wdt_timer_ctrl (int) ;

__attribute__((used)) static void wb_smsc_wdt_shutdown(void)
{
 spin_lock(&io_lock);
 open_io_config();
 select_io_device(IODEV_NO);


 gpio_bit13(0x09);
 gpio_bit12(0x09);


 wdt_timer_conf(0x00);


 wdt_timer_ctrl(0x00);


 wdt_timeout_value(0x00);

 close_io_config();
 spin_unlock(&io_lock);
}
