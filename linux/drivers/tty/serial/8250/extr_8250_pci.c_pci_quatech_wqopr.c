
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

__attribute__((used)) static void pci_quatech_wqopr(struct uart_8250_port *port, u8 qopr)
{
 unsigned long base = port->port.iobase;
 u8 LCR;

 LCR = inb(base + UART_LCR);
 outb(0xBF, base + UART_LCR);
 inb(base + UART_SCR);
 outb(qopr, base + UART_SCR);
 outb(LCR, base + UART_LCR);
}
