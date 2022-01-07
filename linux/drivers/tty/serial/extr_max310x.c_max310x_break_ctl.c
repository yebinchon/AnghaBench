
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int MAX310X_LCR_REG ;
 int MAX310X_LCR_TXBREAK_BIT ;
 int max310x_port_update (struct uart_port*,int ,int ,int ) ;

__attribute__((used)) static void max310x_break_ctl(struct uart_port *port, int break_state)
{
 max310x_port_update(port, MAX310X_LCR_REG,
       MAX310X_LCR_TXBREAK_BIT,
       break_state ? MAX310X_LCR_TXBREAK_BIT : 0);
}
