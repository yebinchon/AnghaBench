
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct u300_pmx_mask {int mask; int bits; } ;
struct u300_pmx {scalar_t__ virtbase; } ;
struct TYPE_2__ {struct u300_pmx_mask* mask; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int readw (scalar_t__) ;
 TYPE_1__* u300_pmx_functions ;
 scalar_t__* u300_pmx_registers ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void u300_pmx_endisable(struct u300_pmx *upmx, unsigned selector,
          bool enable)
{
 u16 regval, val, mask;
 int i;
 const struct u300_pmx_mask *upmx_mask;

 upmx_mask = u300_pmx_functions[selector].mask;
 for (i = 0; i < ARRAY_SIZE(u300_pmx_registers); i++) {
  if (enable)
   val = upmx_mask->bits;
  else
   val = 0;

  mask = upmx_mask->mask;
  if (mask != 0) {
   regval = readw(upmx->virtbase + u300_pmx_registers[i]);
   regval &= ~mask;
   regval |= val;
   writew(regval, upmx->virtbase + u300_pmx_registers[i]);
  }
  upmx_mask++;
 }
}
