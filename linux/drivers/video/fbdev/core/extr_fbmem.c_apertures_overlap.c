
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aperture {scalar_t__ base; scalar_t__ size; } ;



__attribute__((used)) static bool apertures_overlap(struct aperture *gen, struct aperture *hw)
{

 if (gen->base == hw->base)
  return 1;

 if (gen->base > hw->base && gen->base < hw->base + hw->size)
  return 1;
 return 0;
}
