
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ uartclk; scalar_t__ type; int flags; int line; int irq; scalar_t__ mapbase; int iobase; scalar_t__ dev; scalar_t__ handle_break; scalar_t__ pm; scalar_t__ shutdown; scalar_t__ startup; scalar_t__ set_divisor; scalar_t__ get_divisor; scalar_t__ set_mctrl; scalar_t__ get_mctrl; scalar_t__ set_ldisc; scalar_t__ set_termios; scalar_t__ handle_irq; scalar_t__ serial_out; scalar_t__ serial_in; scalar_t__ fifosize; int rs485; int rs485_config; int unthrottle; int throttle; int private_data; int mapsize; int iotype; int regshift; int irqflags; int membase; } ;
struct uart_8250_port {scalar_t__ overrun_backoff_time_ms; int overrun_backoff; TYPE_1__ port; int capabilities; scalar_t__ dl_write; scalar_t__ dl_read; struct mctrl_gpios* gpios; scalar_t__ tx_loadsz; int dma; int bugs; } ;
struct mctrl_gpios {int dummy; } ;


 int EINVAL ;
 int ENOSPC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct mctrl_gpios*) ;
 scalar_t__ PORT_8250_CIR ;
 int PTR_ERR (struct mctrl_gpios*) ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_FIXED_TYPE ;
 int dev_info (scalar_t__,char*,int ,unsigned long long,int ) ;
 int has_acpi_companion (scalar_t__) ;
 struct mctrl_gpios* mctrl_gpio_init (TYPE_1__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serial8250_apply_quirks (struct uart_8250_port*) ;
 struct uart_8250_port* serial8250_find_match_or_unused (TYPE_1__*) ;
 int serial8250_isa_config (int ,TYPE_1__*,int *) ;
 int serial8250_reg ;
 int serial8250_set_defaults (struct uart_8250_port*) ;
 int serial_8250_overrun_backoff_work ;
 int serial_mutex ;
 int uart_add_one_port (int *,TYPE_1__*) ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

int serial8250_register_8250_port(struct uart_8250_port *up)
{
 struct uart_8250_port *uart;
 int ret = -ENOSPC;

 if (up->port.uartclk == 0)
  return -EINVAL;

 mutex_lock(&serial_mutex);

 uart = serial8250_find_match_or_unused(&up->port);
 if (uart && uart->port.type != PORT_8250_CIR) {
  struct mctrl_gpios *gpios;

  if (uart->port.dev)
   uart_remove_one_port(&serial8250_reg, &uart->port);

  uart->port.iobase = up->port.iobase;
  uart->port.membase = up->port.membase;
  uart->port.irq = up->port.irq;
  uart->port.irqflags = up->port.irqflags;
  uart->port.uartclk = up->port.uartclk;
  uart->port.fifosize = up->port.fifosize;
  uart->port.regshift = up->port.regshift;
  uart->port.iotype = up->port.iotype;
  uart->port.flags = up->port.flags | UPF_BOOT_AUTOCONF;
  uart->bugs = up->bugs;
  uart->port.mapbase = up->port.mapbase;
  uart->port.mapsize = up->port.mapsize;
  uart->port.private_data = up->port.private_data;
  uart->tx_loadsz = up->tx_loadsz;
  uart->capabilities = up->capabilities;
  uart->port.throttle = up->port.throttle;
  uart->port.unthrottle = up->port.unthrottle;
  uart->port.rs485_config = up->port.rs485_config;
  uart->port.rs485 = up->port.rs485;
  uart->dma = up->dma;


  if (uart->port.fifosize && !uart->tx_loadsz)
   uart->tx_loadsz = uart->port.fifosize;

  if (up->port.dev)
   uart->port.dev = up->port.dev;

  if (up->port.flags & UPF_FIXED_TYPE)
   uart->port.type = up->port.type;





  if (!has_acpi_companion(uart->port.dev)) {
   gpios = mctrl_gpio_init(&uart->port, 0);
   if (IS_ERR(gpios)) {
    ret = PTR_ERR(gpios);
    goto out_unlock;
   } else {
    uart->gpios = gpios;
   }
  }

  serial8250_set_defaults(uart);


  if (up->port.serial_in)
   uart->port.serial_in = up->port.serial_in;
  if (up->port.serial_out)
   uart->port.serial_out = up->port.serial_out;
  if (up->port.handle_irq)
   uart->port.handle_irq = up->port.handle_irq;

  if (up->port.set_termios)
   uart->port.set_termios = up->port.set_termios;
  if (up->port.set_ldisc)
   uart->port.set_ldisc = up->port.set_ldisc;
  if (up->port.get_mctrl)
   uart->port.get_mctrl = up->port.get_mctrl;
  if (up->port.set_mctrl)
   uart->port.set_mctrl = up->port.set_mctrl;
  if (up->port.get_divisor)
   uart->port.get_divisor = up->port.get_divisor;
  if (up->port.set_divisor)
   uart->port.set_divisor = up->port.set_divisor;
  if (up->port.startup)
   uart->port.startup = up->port.startup;
  if (up->port.shutdown)
   uart->port.shutdown = up->port.shutdown;
  if (up->port.pm)
   uart->port.pm = up->port.pm;
  if (up->port.handle_break)
   uart->port.handle_break = up->port.handle_break;
  if (up->dl_read)
   uart->dl_read = up->dl_read;
  if (up->dl_write)
   uart->dl_write = up->dl_write;

  if (uart->port.type != PORT_8250_CIR) {
   if (serial8250_isa_config != ((void*)0))
    serial8250_isa_config(0, &uart->port,
      &uart->capabilities);

   serial8250_apply_quirks(uart);
   ret = uart_add_one_port(&serial8250_reg,
      &uart->port);
   if (ret == 0)
    ret = uart->port.line;
  } else {
   dev_info(uart->port.dev,
    "skipping CIR port at 0x%lx / 0x%llx, IRQ %d\n",
    uart->port.iobase,
    (unsigned long long)uart->port.mapbase,
    uart->port.irq);

   ret = 0;
  }


  if (up->overrun_backoff_time_ms > 0) {
   uart->overrun_backoff_time_ms =
    up->overrun_backoff_time_ms;
   INIT_DELAYED_WORK(&uart->overrun_backoff,
     serial_8250_overrun_backoff_work);
  } else {
   uart->overrun_backoff_time_ms = 0;
  }
 }

out_unlock:
 mutex_unlock(&serial_mutex);

 return ret;
}
