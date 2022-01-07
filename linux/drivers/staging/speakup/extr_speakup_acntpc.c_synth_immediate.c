
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u_char ;
struct spk_synth {int dummy; } ;
struct TYPE_2__ {int port_tts; } ;


 char PROCSPEECH ;
 int SPK_XMITR_TIMEOUT ;
 int outb_p (char,int ) ;
 TYPE_1__ speakup_info ;
 scalar_t__ synth_full () ;
 scalar_t__ synth_writable () ;
 int udelay (int) ;

__attribute__((used)) static const char *synth_immediate(struct spk_synth *synth, const char *buf)
{
 u_char ch;

 while ((ch = *buf)) {
  int timeout = SPK_XMITR_TIMEOUT;

  if (ch == '\n')
   ch = PROCSPEECH;
  if (synth_full())
   return buf;
  while (synth_writable()) {
   if (!--timeout)
    return buf;
   udelay(1);
  }
  outb_p(ch, speakup_info.port_tts);
  buf++;
 }
 return ((void*)0);
}
