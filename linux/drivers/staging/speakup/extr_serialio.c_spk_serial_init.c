
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct old_serial_port {int baud_base; int irq; scalar_t__ port; } ;
struct TYPE_2__ {scalar_t__ port_tts; } ;


 int ARRAY_SIZE (struct old_serial_port*) ;
 int B9600 ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int CSIZE ;
 int CSTOPB ;
 int HUPCL ;
 int PARENB ;
 int PARODD ;
 scalar_t__ UART_DLL ;
 scalar_t__ UART_DLM ;
 scalar_t__ UART_IER ;
 scalar_t__ UART_LCR ;
 unsigned int UART_LCR_DLAB ;
 unsigned int UART_LCR_EPAR ;
 unsigned int UART_LCR_PARITY ;
 scalar_t__ UART_LSR ;
 scalar_t__ UART_MCR ;
 unsigned int UART_MCR_DTR ;
 unsigned int UART_MCR_RTS ;
 int __release_region (int *,scalar_t__,int) ;
 int inb (scalar_t__) ;
 int ioport_resource ;
 int mdelay (int) ;
 int outb (unsigned int,scalar_t__) ;
 int pr_info (char*,...) ;
 int pr_warn (char*,scalar_t__,int) ;
 struct old_serial_port* rs_table ;
 struct old_serial_port const* serstate ;
 TYPE_1__ speakup_info ;
 int start_serial_interrupt (int ) ;
 int synth_release_region (scalar_t__,int) ;
 int synth_request_region (scalar_t__,int) ;

const struct old_serial_port *spk_serial_init(int index)
{
 int baud = 9600, quot = 0;
 unsigned int cval = 0;
 int cflag = CREAD | HUPCL | CLOCAL | B9600 | CS8;
 const struct old_serial_port *ser;
 int err;

 if (index >= ARRAY_SIZE(rs_table)) {
  pr_info("no port info for ttyS%d\n", index);
  return ((void*)0);
 }
 ser = rs_table + index;


 quot = ser->baud_base / baud;
 cval = cflag & (CSIZE | CSTOPB);



 cval >>= 4;

 if (cflag & PARENB)
  cval |= UART_LCR_PARITY;
 if (!(cflag & PARODD))
  cval |= UART_LCR_EPAR;
 if (synth_request_region(ser->port, 8)) {

  pr_info("Ports not available, trying to steal them\n");
  __release_region(&ioport_resource, ser->port, 8);
  err = synth_request_region(ser->port, 8);
  if (err) {
   pr_warn("Unable to allocate port at %x, errno %i",
    ser->port, err);
   return ((void*)0);
  }
 }




 outb(cval | UART_LCR_DLAB, ser->port + UART_LCR);
 outb(quot & 0xff, ser->port + UART_DLL);
 outb(quot >> 8, ser->port + UART_DLM);
 outb(cval, ser->port + UART_LCR);


 outb(0, ser->port + UART_IER);
 outb(UART_MCR_DTR | UART_MCR_RTS, ser->port + UART_MCR);


 if (inb(ser->port + UART_LSR) == 0xff) {
  synth_release_region(ser->port, 8);
  serstate = ((void*)0);
  return ((void*)0);
 }

 mdelay(1);
 speakup_info.port_tts = ser->port;
 serstate = ser;

 start_serial_interrupt(ser->irq);

 return ser;
}
