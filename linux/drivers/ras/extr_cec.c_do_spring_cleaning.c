
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ce_array {int n; int* array; int decays_done; scalar_t__ decay_count; } ;


 int COUNT_BITS ;
 int DECAY (int) ;
 int DECAY_MASK ;

__attribute__((used)) static void do_spring_cleaning(struct ce_array *ca)
{
 int i;

 for (i = 0; i < ca->n; i++) {
  u8 decay = DECAY(ca->array[i]);

  if (!decay)
   continue;

  decay--;

  ca->array[i] &= ~(DECAY_MASK << COUNT_BITS);
  ca->array[i] |= (decay << COUNT_BITS);
 }
 ca->decay_count = 0;
 ca->decays_done++;
}
