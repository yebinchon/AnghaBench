
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; size_t type; scalar_t__ iotype; int name; int lock; int fifosize; int membase; int iobase; int mapbase; } ;
struct uart_8250_port {unsigned int capabilities; int probe; int tx_loadsz; struct uart_port port; scalar_t__ bugs; } ;
struct TYPE_2__ {unsigned int flags; unsigned char name; int tx_loadsz; int fifo_size; } ;


 int DEBUG_AUTOCONF (char*,unsigned char,...) ;
 size_t PORT_16550 ;
 size_t PORT_16550A ;
 size_t PORT_RSA ;
 size_t PORT_UNKNOWN ;
 int UART_CAP_UUE ;
 int UART_EFR ;
 int UART_FCR ;
 unsigned char UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 unsigned char UART_IER_UUE ;
 int UART_IIR ;
 int UART_LCR ;
 unsigned char UART_LCR_CONF_MODE_B ;
 int UART_MCR_LOOP ;
 int UART_MSR ;
 int UART_PROBE_RSA ;
 int UART_RSA_FRR ;
 int UART_RX ;
 int UPF_BUGGY_UART ;
 int UPF_SKIP_TEST ;
 scalar_t__ UPIO_PORT ;
 scalar_t__ __enable_rsa (struct uart_8250_port*) ;
 int autoconfig_16550a (struct uart_8250_port*) ;
 int autoconfig_8250 (struct uart_8250_port*) ;
 int fintek_8250_probe (struct uart_8250_port*) ;
 int outb (int,int) ;
 int pr_warn (char*,int ,unsigned int,unsigned int) ;
 int serial8250_clear_fifos (struct uart_8250_port*) ;
 unsigned char serial8250_in_MCR (struct uart_8250_port*) ;
 int serial8250_out_MCR (struct uart_8250_port*,unsigned char) ;
 int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* uart_config ;

__attribute__((used)) static void autoconfig(struct uart_8250_port *up)
{
 unsigned char status1, scratch, scratch2, scratch3;
 unsigned char save_lcr, save_mcr;
 struct uart_port *port = &up->port;
 unsigned long flags;
 unsigned int old_capabilities;

 if (!port->iobase && !port->mapbase && !port->membase)
  return;

 DEBUG_AUTOCONF("%s: autoconf (0x%04lx, 0x%p): ",
         port->name, port->iobase, port->membase);





 spin_lock_irqsave(&port->lock, flags);

 up->capabilities = 0;
 up->bugs = 0;

 if (!(port->flags & UPF_BUGGY_UART)) {
  scratch = serial_in(up, UART_IER);
  serial_out(up, UART_IER, 0);







  scratch2 = serial_in(up, UART_IER) & 0x0f;
  serial_out(up, UART_IER, 0x0F);



  scratch3 = serial_in(up, UART_IER) & 0x0f;
  serial_out(up, UART_IER, scratch);
  if (scratch2 != 0 || scratch3 != 0x0F) {



   spin_unlock_irqrestore(&port->lock, flags);
   DEBUG_AUTOCONF("IER test failed (%02x, %02x) ",
           scratch2, scratch3);
   goto out;
  }
 }

 save_mcr = serial8250_in_MCR(up);
 save_lcr = serial_in(up, UART_LCR);
 if (!(port->flags & UPF_SKIP_TEST)) {
  serial8250_out_MCR(up, UART_MCR_LOOP | 0x0A);
  status1 = serial_in(up, UART_MSR) & 0xF0;
  serial8250_out_MCR(up, save_mcr);
  if (status1 != 0x90) {
   spin_unlock_irqrestore(&port->lock, flags);
   DEBUG_AUTOCONF("LOOP test failed (%02x) ",
           status1);
   goto out;
  }
 }
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);
 serial_out(up, UART_EFR, 0);
 serial_out(up, UART_LCR, 0);

 serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO);
 scratch = serial_in(up, UART_IIR) >> 6;

 switch (scratch) {
 case 0:
  autoconfig_8250(up);
  break;
 case 1:
  port->type = PORT_UNKNOWN;
  break;
 case 2:
  port->type = PORT_16550;
  break;
 case 3:
  autoconfig_16550a(up);
  break;
 }
 serial_out(up, UART_LCR, save_lcr);

 port->fifosize = uart_config[up->port.type].fifo_size;
 old_capabilities = up->capabilities;
 up->capabilities = uart_config[port->type].flags;
 up->tx_loadsz = uart_config[port->type].tx_loadsz;

 if (port->type == PORT_UNKNOWN)
  goto out_lock;
 serial8250_out_MCR(up, save_mcr);
 serial8250_clear_fifos(up);
 serial_in(up, UART_RX);
 if (up->capabilities & UART_CAP_UUE)
  serial_out(up, UART_IER, UART_IER_UUE);
 else
  serial_out(up, UART_IER, 0);

out_lock:
 spin_unlock_irqrestore(&port->lock, flags);




 if (port->type == PORT_16550A && port->iotype == UPIO_PORT)
  fintek_8250_probe(up);

 if (up->capabilities != old_capabilities) {
  pr_warn("%s: detected caps %08x should be %08x\n",
   port->name, old_capabilities, up->capabilities);
 }
out:
 DEBUG_AUTOCONF("iir=%d ", scratch);
 DEBUG_AUTOCONF("type=%s\n", uart_config[port->type].name);
}
