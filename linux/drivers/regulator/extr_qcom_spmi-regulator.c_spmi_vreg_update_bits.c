
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct spmi_regulator {scalar_t__ base; int regmap; } ;


 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int spmi_vreg_update_bits(struct spmi_regulator *vreg, u16 addr, u8 val,
  u8 mask)
{
 return regmap_update_bits(vreg->regmap, vreg->base + addr, mask, val);
}
