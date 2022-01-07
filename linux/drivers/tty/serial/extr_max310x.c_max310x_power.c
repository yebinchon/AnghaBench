
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int MAX310X_MODE1_FORCESLEEP_BIT ;
 int MAX310X_MODE1_REG ;
 int max310x_port_update (struct uart_port*,int ,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void max310x_power(struct uart_port *port, int on)
{
 max310x_port_update(port, MAX310X_MODE1_REG,
       MAX310X_MODE1_FORCESLEEP_BIT,
       on ? 0 : MAX310X_MODE1_FORCESLEEP_BIT);
 if (on)
  msleep(50);
}
