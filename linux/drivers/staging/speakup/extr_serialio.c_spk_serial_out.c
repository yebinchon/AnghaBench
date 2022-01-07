
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {scalar_t__ alive; } ;
struct TYPE_2__ {int port_tts; } ;


 int outb_p (char const,int ) ;
 TYPE_1__ speakup_info ;
 scalar_t__ spk_wait_for_xmitr (struct spk_synth*) ;

__attribute__((used)) static int spk_serial_out(struct spk_synth *in_synth, const char ch)
{
 if (in_synth->alive && spk_wait_for_xmitr(in_synth)) {
  outb_p(ch, speakup_info.port_tts);
  return 1;
 }
 return 0;
}
