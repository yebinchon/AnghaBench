
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RTS ;

__attribute__((used)) static unsigned int msm_get_mctrl(struct uart_port *port)
{
 return TIOCM_CAR | TIOCM_CTS | TIOCM_DSR | TIOCM_RTS;
}
