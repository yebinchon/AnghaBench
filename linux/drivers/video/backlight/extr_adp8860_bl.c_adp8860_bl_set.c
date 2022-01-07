
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct backlight_device {int dummy; } ;
struct adp8860_bl {int cached_daylight_max; int current_brightness; scalar_t__ en_ambl_sens; struct i2c_client* client; } ;


 int ADP8860_BLMX1 ;
 int ADP8860_MAX_BRIGHTNESS ;
 int ADP8860_MDCR ;
 int CMP_AUTOEN ;
 int DIM_EN ;
 int adp8860_clr_bits (struct i2c_client*,int ,int ) ;
 int adp8860_set_bits (struct i2c_client*,int ,int ) ;
 int adp8860_write (struct i2c_client*,int ,int) ;
 struct adp8860_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int adp8860_bl_set(struct backlight_device *bl, int brightness)
{
 struct adp8860_bl *data = bl_get_data(bl);
 struct i2c_client *client = data->client;
 int ret = 0;

 if (data->en_ambl_sens) {
  if ((brightness > 0) && (brightness < ADP8860_MAX_BRIGHTNESS)) {

   ret |= adp8860_clr_bits(client, ADP8860_MDCR,
     CMP_AUTOEN);
   ret |= adp8860_write(client, ADP8860_BLMX1, brightness);
  } else {




   ret |= adp8860_write(client, ADP8860_BLMX1,
      data->cached_daylight_max);
   ret |= adp8860_set_bits(client, ADP8860_MDCR,
      CMP_AUTOEN);
  }
 } else
  ret |= adp8860_write(client, ADP8860_BLMX1, brightness);

 if (data->current_brightness && brightness == 0)
  ret |= adp8860_set_bits(client,
    ADP8860_MDCR, DIM_EN);
 else if (data->current_brightness == 0 && brightness)
  ret |= adp8860_clr_bits(client,
    ADP8860_MDCR, DIM_EN);

 if (!ret)
  data->current_brightness = brightness;

 return ret;
}
