
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunzilog_port {int flags; } ;
struct uart_port {int dummy; } ;


 int SUNZILOG_FLAG_ESCC ;
 struct uart_sunzilog_port* UART_ZILOG (struct uart_port*) ;

__attribute__((used)) static const char *sunzilog_type(struct uart_port *port)
{
 struct uart_sunzilog_port *up = UART_ZILOG(port);

 return (up->flags & SUNZILOG_FLAG_ESCC) ? "zs (ESCC)" : "zs";
}
