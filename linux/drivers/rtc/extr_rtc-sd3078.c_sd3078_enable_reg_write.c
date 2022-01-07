
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd3078 {int regmap; } ;


 int KEY_WRITE1 ;
 int KEY_WRITE2 ;
 int KEY_WRITE3 ;
 int SD3078_REG_CTRL1 ;
 int SD3078_REG_CTRL2 ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sd3078_enable_reg_write(struct sd3078 *sd3078)
{
 regmap_update_bits(sd3078->regmap, SD3078_REG_CTRL2,
      KEY_WRITE1, KEY_WRITE1);
 regmap_update_bits(sd3078->regmap, SD3078_REG_CTRL1,
      KEY_WRITE2, KEY_WRITE2);
 regmap_update_bits(sd3078->regmap, SD3078_REG_CTRL1,
      KEY_WRITE3, KEY_WRITE3);
}
