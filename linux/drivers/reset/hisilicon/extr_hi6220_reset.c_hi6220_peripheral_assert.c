
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;
struct regmap {int dummy; } ;
struct hi6220_reset_data {struct regmap* regmap; } ;


 int BIT (int) ;
 int PERIPH_ASSERT_OFFSET ;
 int regmap_write (struct regmap*,int,int ) ;
 struct hi6220_reset_data* to_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int hi6220_peripheral_assert(struct reset_controller_dev *rc_dev,
        unsigned long idx)
{
 struct hi6220_reset_data *data = to_reset_data(rc_dev);
 struct regmap *regmap = data->regmap;
 u32 bank = idx >> 8;
 u32 offset = idx & 0xff;
 u32 reg = PERIPH_ASSERT_OFFSET + bank * 0x10;

 return regmap_write(regmap, reg, BIT(offset));
}
