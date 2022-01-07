
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int alive; int (* synth_immediate ) (struct spk_synth*,char*) ;} ;


 int mdelay (int) ;
 int spk_ttyio_synth_probe (struct spk_synth*) ;
 int stub1 (struct spk_synth*,char*) ;

__attribute__((used)) static int synth_probe(struct spk_synth *synth)
{
 int failed;

 failed = spk_ttyio_synth_probe(synth);
 if (failed == 0) {
  synth->synth_immediate(synth, "\033=R\r");
  mdelay(100);
 }
 synth->alive = !failed;
 return failed;
}
