
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {int dummy; } ;
struct TYPE_2__ {int port_tts; } ;


 int SYNTH_CLEAR ;
 int outb_p (int ,int ) ;
 TYPE_1__ speakup_info ;

__attribute__((used)) static void synth_flush(struct spk_synth *synth)
{
 outb_p(SYNTH_CLEAR, speakup_info.port_tts);
}
