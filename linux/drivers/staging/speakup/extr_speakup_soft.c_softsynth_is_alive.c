
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {int dummy; } ;
struct TYPE_2__ {scalar_t__ alive; } ;


 TYPE_1__ synth_soft ;

__attribute__((used)) static int softsynth_is_alive(struct spk_synth *synth)
{
 if (synth_soft.alive)
  return 1;
 return 0;
}
