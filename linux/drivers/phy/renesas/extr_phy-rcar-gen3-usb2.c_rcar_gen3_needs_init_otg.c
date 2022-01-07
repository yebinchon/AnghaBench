
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_gen3_chan {TYPE_1__* rphys; } ;
struct TYPE_2__ {scalar_t__ otg_initialized; } ;


 int NUM_OF_PHYS ;

__attribute__((used)) static bool rcar_gen3_needs_init_otg(struct rcar_gen3_chan *ch)
{
 int i;

 for (i = 0; i < NUM_OF_PHYS; i++) {
  if (ch->rphys[i].otg_initialized)
   return 0;
 }

 return 1;
}
