
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gb_gbphy_deregister (int *) ;
 int gb_tty_exit () ;
 int uart_driver ;

__attribute__((used)) static void gb_uart_driver_exit(void)
{
 gb_gbphy_deregister(&uart_driver);
 gb_tty_exit();
}
