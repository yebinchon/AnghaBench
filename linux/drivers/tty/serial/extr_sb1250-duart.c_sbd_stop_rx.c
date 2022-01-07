
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct sbd_port {int dummy; } ;


 int R_DUART_IMRREG (int) ;
 struct sbd_port* to_sport (struct uart_port*) ;
 int write_sbdshr (struct sbd_port*,int ,int ) ;

__attribute__((used)) static void sbd_stop_rx(struct uart_port *uport)
{
 struct sbd_port *sport = to_sport(uport);

 write_sbdshr(sport, R_DUART_IMRREG((uport->line) % 2), 0);
}
