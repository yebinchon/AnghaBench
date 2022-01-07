
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int MAX14830_BRGCFG_CLKDIS_BIT ;
 int MAX310X_BRGCFG_REG ;
 int max310x_port_update (struct uart_port*,int ,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void max14830_power(struct uart_port *port, int on)
{
 max310x_port_update(port, MAX310X_BRGCFG_REG,
       MAX14830_BRGCFG_CLKDIS_BIT,
       on ? 0 : MAX14830_BRGCFG_CLKDIS_BIT);
 if (on)
  msleep(50);
}
