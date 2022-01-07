
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int handle_rx_console(struct uart_port *uport, u32 bytes, bool drop)
{
 return -EPERM;
}
