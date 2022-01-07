
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int alive; int long_name; int init; } ;


 int pr_warn (char*,int ) ;
 scalar_t__ spk_wait_for_xmitr (struct spk_synth*) ;
 int synth_printf (char*,int ) ;

int spk_synth_is_alive_restart(struct spk_synth *synth)
{
 if (synth->alive)
  return 1;
 if (spk_wait_for_xmitr(synth) > 0) {

  synth->alive = 1;
  synth_printf("%s", synth->init);
  return 2;
 }
 pr_warn("%s: can't restart synth\n", synth->long_name);
 return 0;
}
