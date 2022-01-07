
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct backlight_device {int dummy; } ;
struct adp8870_bl {int cached_daylight_max; int current_brightness; TYPE_1__* pdata; struct i2c_client* client; } ;
struct TYPE_2__ {scalar_t__ en_ambl_sens; } ;


 int ADP8870_BLMX1 ;
 int ADP8870_MAX_BRIGHTNESS ;
 int ADP8870_MDCR ;
 int CMP_AUTOEN ;
 int DIM_EN ;
 int adp8870_clr_bits (struct i2c_client*,int ,int ) ;
 int adp8870_set_bits (struct i2c_client*,int ,int ) ;
 int adp8870_write (struct i2c_client*,int ,int) ;
 struct adp8870_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int adp8870_bl_set(struct backlight_device *bl, int brightness)
{
 struct adp8870_bl *data = bl_get_data(bl);
 struct i2c_client *client = data->client;
 int ret = 0;

 if (data->pdata->en_ambl_sens) {
  if ((brightness > 0) && (brightness < ADP8870_MAX_BRIGHTNESS)) {

   ret = adp8870_clr_bits(client, ADP8870_MDCR,
     CMP_AUTOEN);
   if (ret)
    return ret;
   ret = adp8870_write(client, ADP8870_BLMX1, brightness);
   if (ret)
    return ret;
  } else {




   ret = adp8870_write(client, ADP8870_BLMX1,
      data->cached_daylight_max);
   if (ret)
    return ret;

   ret = adp8870_set_bits(client, ADP8870_MDCR,
      CMP_AUTOEN);
   if (ret)
    return ret;
  }
 } else {
  ret = adp8870_write(client, ADP8870_BLMX1, brightness);
  if (ret)
   return ret;
 }

 if (data->current_brightness && brightness == 0)
  ret = adp8870_set_bits(client,
    ADP8870_MDCR, DIM_EN);
 else if (data->current_brightness == 0 && brightness)
  ret = adp8870_clr_bits(client,
    ADP8870_MDCR, DIM_EN);

 if (!ret)
  data->current_brightness = brightness;

 return ret;
}
