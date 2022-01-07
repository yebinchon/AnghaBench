
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int irq; } ;
struct TYPE_5__ {scalar_t__ port_tts; } ;
struct TYPE_4__ {int read_buff_add; } ;


 scalar_t__ UART_IER ;
 int free_irq (int ,void*) ;
 int outb (int ,scalar_t__) ;
 TYPE_3__* serstate ;
 TYPE_2__ speakup_info ;
 TYPE_1__* synth ;
 scalar_t__ synth_readbuf_handler ;

void spk_stop_serial_interrupt(void)
{
 if (speakup_info.port_tts == 0)
  return;

 if (!synth->read_buff_add)
  return;


 outb(0, speakup_info.port_tts + UART_IER);

 free_irq(serstate->irq, (void *)synth_readbuf_handler);
}
