
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IODEV_NO ;
 int close_io_config () ;
 int io_lock ;
 int open_io_config () ;
 unsigned char read_io_cr (int) ;
 int select_io_device (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned char wb_smsc_wdt_get_timeout(void)
{
 unsigned char set_timeout;

 spin_lock(&io_lock);
 open_io_config();
 select_io_device(IODEV_NO);
 set_timeout = read_io_cr(0xF2);
 close_io_config();
 spin_unlock(&io_lock);

 return set_timeout;
}
