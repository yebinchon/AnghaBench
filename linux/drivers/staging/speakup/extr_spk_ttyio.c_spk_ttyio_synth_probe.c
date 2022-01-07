
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int alive; } ;


 int spk_ttyio_initialise_ldisc (struct spk_synth*) ;
 struct spk_synth* spk_ttyio_synth ;

int spk_ttyio_synth_probe(struct spk_synth *synth)
{
 int rv = spk_ttyio_initialise_ldisc(synth);

 if (rv)
  return rv;

 synth->alive = 1;
 spk_ttyio_synth = synth;

 return 0;
}
