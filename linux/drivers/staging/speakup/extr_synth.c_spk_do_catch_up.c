
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int dummy; } ;


 int _spk_do_catch_up (struct spk_synth*,int ) ;

void spk_do_catch_up(struct spk_synth *synth)
{
 _spk_do_catch_up(synth, 0);
}
