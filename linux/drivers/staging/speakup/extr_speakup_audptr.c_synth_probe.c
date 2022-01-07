
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int alive; } ;


 int spk_ttyio_synth_probe (struct spk_synth*) ;
 int synth_version (struct spk_synth*) ;

__attribute__((used)) static int synth_probe(struct spk_synth *synth)
{
 int failed;

 failed = spk_ttyio_synth_probe(synth);
 if (failed == 0)
  synth_version(synth);
 synth->alive = !failed;
 return 0;
}
