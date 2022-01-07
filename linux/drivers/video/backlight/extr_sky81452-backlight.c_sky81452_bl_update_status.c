
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sky81452_bl_platform_data {int enable; } ;
struct regmap {int dummy; } ;
struct TYPE_4__ {scalar_t__ brightness; } ;
struct TYPE_3__ {int parent; } ;
struct backlight_device {TYPE_2__ props; TYPE_1__ dev; } ;


 int CTZ (int ) ;
 int SKY81452_EN ;
 int SKY81452_REG0 ;
 int SKY81452_REG1 ;
 struct regmap* bl_get_data (struct backlight_device*) ;
 struct sky81452_bl_platform_data* dev_get_platdata (int ) ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;
 int regmap_write (struct regmap*,int ,unsigned int const) ;

__attribute__((used)) static int sky81452_bl_update_status(struct backlight_device *bd)
{
 const struct sky81452_bl_platform_data *pdata =
   dev_get_platdata(bd->dev.parent);
 const unsigned int brightness = (unsigned int)bd->props.brightness;
 struct regmap *regmap = bl_get_data(bd);
 int ret;

 if (brightness > 0) {
  ret = regmap_write(regmap, SKY81452_REG0, brightness - 1);
  if (ret < 0)
   return ret;

  return regmap_update_bits(regmap, SKY81452_REG1, SKY81452_EN,
     pdata->enable << CTZ(SKY81452_EN));
 }

 return regmap_update_bits(regmap, SKY81452_REG1, SKY81452_EN, 0);
}
