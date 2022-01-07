
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IODEV_NO ;
 scalar_t__ UNIT_SECOND ;
 int close_io_config () ;
 int gpio_bit12 (int) ;
 int gpio_bit13 (int) ;
 int io_lock ;
 int open_io_config () ;
 int read_io_cr (int) ;
 int select_io_device (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unit ;
 int wdt_timeout_value (int ) ;
 int wdt_timer_conf (int) ;
 int wdt_timer_ctrl (int) ;
 int wdt_timer_units (unsigned char) ;

__attribute__((used)) static void wb_smsc_wdt_initialize(void)
{
 unsigned char old;

 spin_lock(&io_lock);
 open_io_config();
 select_io_device(IODEV_NO);


 gpio_bit13(0x08);
 gpio_bit12(0x0A);


 wdt_timeout_value(0);


 wdt_timer_ctrl(0x00);


 wdt_timer_conf(0x00);


 old = read_io_cr(0xF1) & 0x7F;
 if (unit == UNIT_SECOND)
  old |= 0x80;


 wdt_timer_units(old);

 close_io_config();
 spin_unlock(&io_lock);
}
