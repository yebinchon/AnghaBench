
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_bl {int cb; } ;
struct backlight_device {int dummy; } ;


 struct lm3533_bl* bl_get_data (struct backlight_device*) ;
 int lm3533_ctrlbank_get_brightness (int *,int*) ;

__attribute__((used)) static int lm3533_bl_get_brightness(struct backlight_device *bd)
{
 struct lm3533_bl *bl = bl_get_data(bd);
 u8 val;
 int ret;

 ret = lm3533_ctrlbank_get_brightness(&bl->cb, &val);
 if (ret)
  return ret;

 return val;
}
