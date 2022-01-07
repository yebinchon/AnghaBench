
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;



__attribute__((used)) static const char *sbd_type(struct uart_port *uport)
{
 return "SB1250 DUART";
}
