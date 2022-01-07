
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dev; int type; int flags; int lock; } ;
struct uart_8250_port {TYPE_1__ port; scalar_t__ capabilities; scalar_t__ em485; } ;
struct TYPE_5__ {int dev; } ;


 int PORT_UNKNOWN ;
 int UPF_BOOT_AUTOCONF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serial8250_apply_quirks (struct uart_8250_port*) ;
 int serial8250_em485_destroy (struct uart_8250_port*) ;
 TYPE_3__* serial8250_isa_devs ;
 struct uart_8250_port* serial8250_ports ;
 int serial8250_reg ;
 int serial_mutex ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_add_one_port (int *,TYPE_1__*) ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

void serial8250_unregister_port(int line)
{
 struct uart_8250_port *uart = &serial8250_ports[line];

 mutex_lock(&serial_mutex);

 if (uart->em485) {
  unsigned long flags;

  spin_lock_irqsave(&uart->port.lock, flags);
  serial8250_em485_destroy(uart);
  spin_unlock_irqrestore(&uart->port.lock, flags);
 }

 uart_remove_one_port(&serial8250_reg, &uart->port);
 if (serial8250_isa_devs) {
  uart->port.flags &= ~UPF_BOOT_AUTOCONF;
  uart->port.type = PORT_UNKNOWN;
  uart->port.dev = &serial8250_isa_devs->dev;
  uart->capabilities = 0;
  serial8250_apply_quirks(uart);
  uart_add_one_port(&serial8250_reg, &uart->port);
 } else {
  uart->port.dev = ((void*)0);
 }
 mutex_unlock(&serial_mutex);
}
