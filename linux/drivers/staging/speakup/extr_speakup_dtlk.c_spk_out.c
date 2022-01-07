
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_tts; } ;


 int SPK_XMITR_TIMEOUT ;
 int outb_p (char const,int ) ;
 TYPE_1__ speakup_info ;
 scalar_t__ synth_writable () ;
 int udelay (int) ;

__attribute__((used)) static void spk_out(const char ch)
{
 int timeout = SPK_XMITR_TIMEOUT;

 while (!synth_writable()) {
  if (!--timeout)
   break;
  udelay(1);
 }
 outb_p(ch, speakup_info.port_tts);
 timeout = SPK_XMITR_TIMEOUT;
 while (synth_writable()) {
  if (!--timeout)
   break;
  udelay(1);
 }
}
