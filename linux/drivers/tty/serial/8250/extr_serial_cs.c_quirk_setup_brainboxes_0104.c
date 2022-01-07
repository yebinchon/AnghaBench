
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uartclk; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct pcmcia_device {int dummy; } ;



__attribute__((used)) static void quirk_setup_brainboxes_0104(struct pcmcia_device *link, struct uart_8250_port *uart)
{
 uart->port.uartclk = 14745600;
}
