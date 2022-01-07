
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int port_tts; } ;


 int cpu_relax () ;
 int outb_p (int,int ) ;
 TYPE_1__ speakup_info ;
 scalar_t__ synth_readable () ;
 int synth_status ;

__attribute__((used)) static char synth_read_tts(void)
{
 u_char ch;

 while (!synth_readable())
  cpu_relax();
 ch = synth_status & 0x7f;
 outb_p(ch, speakup_info.port_tts);
 while (synth_readable())
  cpu_relax();
 return (char)ch;
}
