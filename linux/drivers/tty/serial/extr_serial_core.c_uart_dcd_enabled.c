
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int status; } ;


 int UPSTAT_DCD_ENABLE ;

__attribute__((used)) static int uart_dcd_enabled(struct uart_port *uport)
{
 return !!(uport->status & UPSTAT_DCD_ENABLE);
}
