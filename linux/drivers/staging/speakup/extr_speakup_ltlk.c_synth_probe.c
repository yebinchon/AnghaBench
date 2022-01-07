
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int alive; } ;


 int spk_ttyio_synth_probe (struct spk_synth*) ;
 int synth_interrogate (struct spk_synth*) ;

__attribute__((used)) static int synth_probe(struct spk_synth *synth)
{
 int failed = 0;

 failed = spk_ttyio_synth_probe(synth);
 if (failed == 0)
  synth_interrogate(synth);
 synth->alive = !failed;
 return failed;
}
