
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intc_mask_reg {unsigned long dist_reg; scalar_t__* enum_ids; int reg_width; } ;
struct intc_desc_int {int dummy; } ;
struct TYPE_2__ {unsigned int nr_mask_regs; struct intc_mask_reg* mask_regs; } ;
struct intc_desc {TYPE_1__ hw; } ;
typedef scalar_t__ intc_enum ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 unsigned int MODE_ENABLE_REG ;
 unsigned int REG_FN_MODIFY_BASE ;
 unsigned int _INTC_MK (unsigned int,unsigned int,int ,int ,int,int) ;
 int intc_get_reg (struct intc_desc_int*,unsigned long) ;

__attribute__((used)) static unsigned int intc_dist_data(struct intc_desc *desc,
       struct intc_desc_int *d,
       intc_enum enum_id)
{
 struct intc_mask_reg *mr = desc->hw.mask_regs;
 unsigned int i, j, fn, mode;
 unsigned long reg_e, reg_d;

 for (i = 0; mr && enum_id && i < desc->hw.nr_mask_regs; i++) {
  mr = desc->hw.mask_regs + i;





  if (!mr->dist_reg)
   continue;

  for (j = 0; j < ARRAY_SIZE(mr->enum_ids); j++) {
   if (mr->enum_ids[j] != enum_id)
    continue;

   fn = REG_FN_MODIFY_BASE;
   mode = MODE_ENABLE_REG;
   reg_e = mr->dist_reg;
   reg_d = mr->dist_reg;

   fn += (mr->reg_width >> 3) - 1;
   return _INTC_MK(fn, mode,
     intc_get_reg(d, reg_e),
     intc_get_reg(d, reg_d),
     1,
     (mr->reg_width - 1) - j);
  }
 }





 return 0;
}
