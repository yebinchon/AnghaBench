
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gb_gbphy_register (int *) ;
 int gb_tty_exit () ;
 int gb_tty_init () ;
 int uart_driver ;

__attribute__((used)) static int gb_uart_driver_init(void)
{
 int ret;

 ret = gb_tty_init();
 if (ret)
  return ret;

 ret = gb_gbphy_register(&uart_driver);
 if (ret) {
  gb_tty_exit();
  return ret;
 }

 return 0;
}
