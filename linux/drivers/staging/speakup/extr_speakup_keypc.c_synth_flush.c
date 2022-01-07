
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int dummy; } ;


 int SYNTH_CLEAR ;
 int outb_p (int ,int ) ;
 int synth_port ;

__attribute__((used)) static void synth_flush(struct spk_synth *synth)
{
 outb_p(SYNTH_CLEAR, synth_port);
}
