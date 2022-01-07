
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; int * membase; scalar_t__ mapbase; scalar_t__ iobase; int type; scalar_t__ flags; } ;
struct uart_txx9_port {TYPE_1__ port; } ;


 int PORT_UNKNOWN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serial_txx9_mutex ;
 struct uart_txx9_port* serial_txx9_ports ;
 int serial_txx9_reg ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static void serial_txx9_unregister_port(int line)
{
 struct uart_txx9_port *uart = &serial_txx9_ports[line];

 mutex_lock(&serial_txx9_mutex);
 uart_remove_one_port(&serial_txx9_reg, &uart->port);
 uart->port.flags = 0;
 uart->port.type = PORT_UNKNOWN;
 uart->port.iobase = 0;
 uart->port.mapbase = 0;
 uart->port.membase = ((void*)0);
 uart->port.dev = ((void*)0);
 mutex_unlock(&serial_txx9_mutex);
}
