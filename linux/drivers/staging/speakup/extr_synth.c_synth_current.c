
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int dummy; } ;


 struct spk_synth* synth ;

struct spk_synth *synth_current(void)
{
 return synth;
}
