
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int iotype; int handle_irq; int serial_out; int serial_in; } ;
struct uart_8250_port {int cur_iotype; int dl_write; int dl_read; } ;
 int au_serial_dl_read ;
 int au_serial_dl_write ;
 int au_serial_in ;
 int au_serial_out ;
 int default_serial_dl_read ;
 int default_serial_dl_write ;
 int hub6_serial_in ;
 int hub6_serial_out ;
 int io_serial_in ;
 int io_serial_out ;
 int mem16_serial_in ;
 int mem16_serial_out ;
 int mem32_serial_in ;
 int mem32_serial_out ;
 int mem32be_serial_in ;
 int mem32be_serial_out ;
 int mem_serial_in ;
 int mem_serial_out ;
 int serial8250_default_handle_irq ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void set_io_from_upio(struct uart_port *p)
{
 struct uart_8250_port *up = up_to_u8250p(p);

 up->dl_read = default_serial_dl_read;
 up->dl_write = default_serial_dl_write;

 switch (p->iotype) {
 case 132:
  p->serial_in = hub6_serial_in;
  p->serial_out = hub6_serial_out;
  break;

 case 131:
  p->serial_in = mem_serial_in;
  p->serial_out = mem_serial_out;
  break;

 case 130:
  p->serial_in = mem16_serial_in;
  p->serial_out = mem16_serial_out;
  break;

 case 129:
  p->serial_in = mem32_serial_in;
  p->serial_out = mem32_serial_out;
  break;

 case 128:
  p->serial_in = mem32be_serial_in;
  p->serial_out = mem32be_serial_out;
  break;
 default:
  p->serial_in = io_serial_in;
  p->serial_out = io_serial_out;
  break;
 }

 up->cur_iotype = p->iotype;
 p->handle_irq = serial8250_default_handle_irq;
}
