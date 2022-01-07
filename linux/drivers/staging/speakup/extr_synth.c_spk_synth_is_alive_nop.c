
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int alive; } ;



int spk_synth_is_alive_nop(struct spk_synth *synth)
{
 synth->alive = 1;
 return 1;
}
