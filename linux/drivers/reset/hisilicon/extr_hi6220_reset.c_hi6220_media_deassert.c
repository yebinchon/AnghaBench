
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct regmap {int dummy; } ;
struct hi6220_reset_data {struct regmap* regmap; } ;


 int BIT (unsigned long) ;
 int SC_MEDIA_RSTDIS ;
 int regmap_write (struct regmap*,int ,int ) ;
 struct hi6220_reset_data* to_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int hi6220_media_deassert(struct reset_controller_dev *rc_dev,
     unsigned long idx)
{
 struct hi6220_reset_data *data = to_reset_data(rc_dev);
 struct regmap *regmap = data->regmap;

 return regmap_write(regmap, SC_MEDIA_RSTDIS, BIT(idx));
}
