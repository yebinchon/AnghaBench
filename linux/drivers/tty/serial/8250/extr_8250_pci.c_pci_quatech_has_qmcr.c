
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned long iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 scalar_t__ UART_LCR ;
 scalar_t__ UART_SCR ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int pci_quatech_has_qmcr(struct uart_8250_port *port)
{
 unsigned long base = port->port.iobase;
 u8 LCR, val;

 LCR = inb(base + UART_LCR);
 outb(0xBF, base + UART_LCR);
 val = inb(base + UART_SCR);
 if (val & 0x20) {
  outb(0x80, UART_LCR);
  if (!(inb(UART_SCR) & 0x20)) {
   outb(LCR, base + UART_LCR);
   return 1;
  }
 }
 return 0;
}
