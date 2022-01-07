
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct irq_affinity {int nr_sets; unsigned int* set_size; struct csio_hw* priv; } ;
struct csio_hw {unsigned int num_pports; } ;



__attribute__((used)) static void csio_calc_sets(struct irq_affinity *affd, unsigned int nvecs)
{
 struct csio_hw *hw = affd->priv;
 u8 i;

 if (!nvecs)
  return;

 if (nvecs < hw->num_pports) {
  affd->nr_sets = 1;
  affd->set_size[0] = nvecs;
  return;
 }

 affd->nr_sets = hw->num_pports;
 for (i = 0; i < hw->num_pports; i++)
  affd->set_size[i] = nvecs / hw->num_pports;
}
