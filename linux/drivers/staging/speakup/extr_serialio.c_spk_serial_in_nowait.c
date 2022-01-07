
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_tts; } ;


 scalar_t__ UART_LSR ;
 unsigned char UART_LSR_DR ;
 scalar_t__ UART_RX ;
 unsigned char inb_p (scalar_t__) ;
 TYPE_1__ speakup_info ;

__attribute__((used)) static unsigned char spk_serial_in_nowait(void)
{
 unsigned char lsr;

 lsr = inb_p(speakup_info.port_tts + UART_LSR);
 if (!(lsr & UART_LSR_DR))
  return 0;
 return inb_p(speakup_info.port_tts + UART_RX);
}
