
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct as3722_regulators {struct as3722* as3722; } ;
struct as3722 {int dummy; } ;
struct TYPE_2__ {int vsel_reg; } ;


 int AS3722_LDO3_MODE_MASK ;




 int EINVAL ;
 TYPE_1__* as3722_reg_lookup ;
 int as3722_update_bits (struct as3722*,int ,int ,int) ;

__attribute__((used)) static int as3722_ldo3_set_tracking_mode(struct as3722_regulators *as3722_reg,
  int id, u8 mode)
{
 struct as3722 *as3722 = as3722_reg->as3722;

 switch (mode) {
 case 130:
 case 129:
 case 131:
 case 128:
  return as3722_update_bits(as3722,
   as3722_reg_lookup[id].vsel_reg,
   AS3722_LDO3_MODE_MASK, mode);

 default:
  return -EINVAL;
 }
}
