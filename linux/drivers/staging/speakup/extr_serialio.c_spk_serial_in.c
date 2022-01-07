
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_tts; } ;


 int SPK_SERIAL_TIMEOUT ;
 scalar_t__ UART_LSR ;
 unsigned char UART_LSR_DR ;
 scalar_t__ UART_RX ;
 unsigned char inb_p (scalar_t__) ;
 int pr_warn (char*) ;
 TYPE_1__ speakup_info ;
 int udelay (int) ;

__attribute__((used)) static unsigned char spk_serial_in(void)
{
 int tmout = SPK_SERIAL_TIMEOUT;

 while (!(inb_p(speakup_info.port_tts + UART_LSR) & UART_LSR_DR)) {
  if (--tmout == 0) {
   pr_warn("time out while waiting for input.\n");
   return 0xff;
  }
  udelay(1);
 }
 return inb_p(speakup_info.port_tts + UART_RX);
}
