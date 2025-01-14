
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ port_tts; } ;
struct TYPE_3__ {int read_buff_add; } ;


 int IRQF_SHARED ;
 scalar_t__ UART_FCR ;
 scalar_t__ UART_IER ;
 int UART_IER_MSI ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 scalar_t__ UART_IIR ;
 scalar_t__ UART_LSR ;
 scalar_t__ UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 scalar_t__ UART_MSR ;
 scalar_t__ UART_RX ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int pr_err (char*) ;
 int request_irq (int,scalar_t__,int ,char*,void*) ;
 TYPE_2__ speakup_info ;
 TYPE_1__* synth ;
 scalar_t__ synth_readbuf_handler ;

__attribute__((used)) static void start_serial_interrupt(int irq)
{
 int rv;

 if (!synth->read_buff_add)
  return;

 rv = request_irq(irq, synth_readbuf_handler, IRQF_SHARED,
    "serial", (void *)synth_readbuf_handler);

 if (rv)
  pr_err("Unable to request Speakup serial I R Q\n");

 outb(UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2,
      speakup_info.port_tts + UART_MCR);

 outb(UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI,
      speakup_info.port_tts + UART_IER);
 inb(speakup_info.port_tts + UART_LSR);
 inb(speakup_info.port_tts + UART_RX);
 inb(speakup_info.port_tts + UART_IIR);
 inb(speakup_info.port_tts + UART_MSR);
 outb(1, speakup_info.port_tts + UART_FCR);
}
