
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
 int wdt_timeout_value (unsigned char) ;
 int wdt_timer_ctrl (int) ;

__attribute__((used)) static void wb_smsc_wdt_set_timeout(unsigned char new_timeout)
{
 spin_lock(&io_lock);
 open_io_config();
 select_io_device(IODEV_NO);


 wdt_timer_ctrl((new_timeout == 0) ? 0x00 : 0x02);


 wdt_timeout_value(new_timeout);

 close_io_config();
 spin_unlock(&io_lock);
}
