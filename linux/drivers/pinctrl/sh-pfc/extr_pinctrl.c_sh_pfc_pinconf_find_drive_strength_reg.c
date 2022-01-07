
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sh_pfc {TYPE_1__* info; } ;
struct pinmux_drive_reg_field {unsigned int size; unsigned int pin; unsigned int offset; } ;
struct pinmux_drive_reg {scalar_t__ reg; struct pinmux_drive_reg_field* fields; } ;
struct TYPE_2__ {struct pinmux_drive_reg* drive_regs; } ;


 unsigned int ARRAY_SIZE (struct pinmux_drive_reg_field*) ;

__attribute__((used)) static u32 sh_pfc_pinconf_find_drive_strength_reg(struct sh_pfc *pfc,
  unsigned int pin, unsigned int *offset, unsigned int *size)
{
 const struct pinmux_drive_reg_field *field;
 const struct pinmux_drive_reg *reg;
 unsigned int i;

 for (reg = pfc->info->drive_regs; reg->reg; ++reg) {
  for (i = 0; i < ARRAY_SIZE(reg->fields); ++i) {
   field = &reg->fields[i];

   if (field->size && field->pin == pin) {
    *offset = field->offset;
    *size = field->size;

    return reg->reg;
   }
  }
 }

 return 0;
}
