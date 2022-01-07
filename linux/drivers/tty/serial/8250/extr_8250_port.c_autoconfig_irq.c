
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int iobase; int irq; } ;
struct uart_8250_port {struct uart_port port; } ;


 int UART_IER ;
 int UART_IIR ;
 int UART_LSR ;
 unsigned char UART_MCR_DTR ;
 unsigned char UART_MCR_OUT1 ;
 unsigned char UART_MCR_OUT2 ;
 unsigned char UART_MCR_RTS ;
 int UART_MSR ;
 int UART_RX ;
 int UART_TX ;
 int UPF_FOURPORT ;
 int console_lock () ;
 int console_unlock () ;
 unsigned char inb_p (unsigned int) ;
 int outb_p (unsigned char,unsigned int) ;
 int probe_irq_off (unsigned long) ;
 unsigned long probe_irq_on () ;
 unsigned char serial8250_in_MCR (struct uart_8250_port*) ;
 int serial8250_out_MCR (struct uart_8250_port*,unsigned char) ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,unsigned char) ;
 scalar_t__ uart_console (struct uart_port*) ;
 int udelay (int) ;

__attribute__((used)) static void autoconfig_irq(struct uart_8250_port *up)
{
 struct uart_port *port = &up->port;
 unsigned char save_mcr, save_ier;
 unsigned char save_ICP = 0;
 unsigned int ICP = 0;
 unsigned long irqs;
 int irq;

 if (port->flags & UPF_FOURPORT) {
  ICP = (port->iobase & 0xfe0) | 0x1f;
  save_ICP = inb_p(ICP);
  outb_p(0x80, ICP);
  inb_p(ICP);
 }

 if (uart_console(port))
  console_lock();


 probe_irq_off(probe_irq_on());
 save_mcr = serial8250_in_MCR(up);
 save_ier = serial_in(up, UART_IER);
 serial8250_out_MCR(up, UART_MCR_OUT1 | UART_MCR_OUT2);

 irqs = probe_irq_on();
 serial8250_out_MCR(up, 0);
 udelay(10);
 if (port->flags & UPF_FOURPORT) {
  serial8250_out_MCR(up, UART_MCR_DTR | UART_MCR_RTS);
 } else {
  serial8250_out_MCR(up,
   UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2);
 }
 serial_out(up, UART_IER, 0x0f);
 serial_in(up, UART_LSR);
 serial_in(up, UART_RX);
 serial_in(up, UART_IIR);
 serial_in(up, UART_MSR);
 serial_out(up, UART_TX, 0xFF);
 udelay(20);
 irq = probe_irq_off(irqs);

 serial8250_out_MCR(up, save_mcr);
 serial_out(up, UART_IER, save_ier);

 if (port->flags & UPF_FOURPORT)
  outb_p(save_ICP, ICP);

 if (uart_console(port))
  console_unlock();

 port->irq = (irq > 0) ? irq : 0;
}
