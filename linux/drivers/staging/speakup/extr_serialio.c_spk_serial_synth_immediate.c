
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u_char ;
struct spk_synth {char procspeech; } ;
struct TYPE_2__ {int port_tts; } ;


 int outb (char,int ) ;
 TYPE_1__ speakup_info ;
 scalar_t__ spk_wait_for_xmitr (struct spk_synth*) ;

const char *spk_serial_synth_immediate(struct spk_synth *synth,
           const char *buff)
{
 u_char ch;

 while ((ch = *buff)) {
  if (ch == '\n')
   ch = synth->procspeech;
  if (spk_wait_for_xmitr(synth))
   outb(ch, speakup_info.port_tts);
  else
   return buff;
  buff++;
 }
 return ((void*)0);
}
