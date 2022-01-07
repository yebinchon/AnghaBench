
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_tts; } ;


 int SPK_XMITR_TIMEOUT ;
 int outb (char,int ) ;
 TYPE_1__ speakup_info ;
 scalar_t__ spk_serial_tx_busy () ;
 int udelay (int) ;

__attribute__((used)) static void spk_serial_send_xchar(char ch)
{
 int timeout = SPK_XMITR_TIMEOUT;

 while (spk_serial_tx_busy()) {
  if (!--timeout)
   break;
  udelay(1);
 }
 outb(ch, speakup_info.port_tts);
}
