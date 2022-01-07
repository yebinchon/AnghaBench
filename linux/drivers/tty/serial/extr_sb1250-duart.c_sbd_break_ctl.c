
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct sbd_port {int dummy; } ;


 int R_DUART_CMD ;
 int V_DUART_MISC_CMD_START_BREAK ;
 int V_DUART_MISC_CMD_STOP_BREAK ;
 struct sbd_port* to_sport (struct uart_port*) ;
 int write_sbdchn (struct sbd_port*,int ,int ) ;

__attribute__((used)) static void sbd_break_ctl(struct uart_port *uport, int break_state)
{
 struct sbd_port *sport = to_sport(uport);

 if (break_state == -1)
  write_sbdchn(sport, R_DUART_CMD, V_DUART_MISC_CMD_START_BREAK);
 else
  write_sbdchn(sport, R_DUART_CMD, V_DUART_MISC_CMD_STOP_BREAK);
}
