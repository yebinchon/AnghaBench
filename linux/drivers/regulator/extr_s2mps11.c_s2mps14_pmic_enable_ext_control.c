
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2mps11_info {int dummy; } ;
struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {int enable_mask; int enable_reg; } ;


 int S2MPS14_ENABLE_EXT_CONTROL ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int s2mps14_pmic_enable_ext_control(struct s2mps11_info *s2mps11,
  struct regulator_dev *rdev)
{
 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
   rdev->desc->enable_mask, S2MPS14_ENABLE_EXT_CONTROL);
}
