
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct backlight_device {int dummy; } ;
struct adp8860_bl {int cached_daylight_max; scalar_t__ gdwn_dis; scalar_t__ en_ambl_sens; struct adp8860_backlight_platform_data* pdata; struct i2c_client* client; } ;
struct adp8860_backlight_platform_data {int bl_led_assign; int l1_daylight_max; int l1_daylight_dim; int l2_office_max; int l2_office_dim; int l3_dark_max; int l3_dark_dim; int l2_trip; int l2_hyst; int l3_trip; int l3_hyst; int bl_fade_out; int bl_fade_in; int bl_fade_law; int abml_filt; } ;


 int ADP8860_BLDM1 ;
 int ADP8860_BLDM2 ;
 int ADP8860_BLDM3 ;
 int ADP8860_BLFR ;
 int ADP8860_BLMX1 ;
 int ADP8860_BLMX2 ;
 int ADP8860_BLMX3 ;
 int ADP8860_BLSEN ;
 int ADP8860_CCFG ;
 int ADP8860_CFGR ;
 int ADP8860_L2_HYS ;
 int ADP8860_L2_TRP ;
 int ADP8860_L3_HYS ;
 int ADP8860_L3_TRP ;
 int ADP8860_MDCR ;
 int ALS_CCFG_VAL (int ) ;
 int BLEN ;
 int BL_CFGR_VAL (int ,int ) ;
 int DIM_EN ;
 int FADE_VAL (int ,int ) ;
 int GDWN_DIS ;
 int L2_EN ;
 int L3_EN ;
 int NSTBY ;
 int adp8860_set_bits (struct i2c_client*,int ,int) ;
 int adp8860_write (struct i2c_client*,int ,int) ;
 struct adp8860_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int adp8860_bl_setup(struct backlight_device *bl)
{
 struct adp8860_bl *data = bl_get_data(bl);
 struct i2c_client *client = data->client;
 struct adp8860_backlight_platform_data *pdata = data->pdata;
 int ret = 0;

 ret |= adp8860_write(client, ADP8860_BLSEN, ~pdata->bl_led_assign);
 ret |= adp8860_write(client, ADP8860_BLMX1, pdata->l1_daylight_max);
 ret |= adp8860_write(client, ADP8860_BLDM1, pdata->l1_daylight_dim);

 if (data->en_ambl_sens) {
  data->cached_daylight_max = pdata->l1_daylight_max;
  ret |= adp8860_write(client, ADP8860_BLMX2,
      pdata->l2_office_max);
  ret |= adp8860_write(client, ADP8860_BLDM2,
      pdata->l2_office_dim);
  ret |= adp8860_write(client, ADP8860_BLMX3,
      pdata->l3_dark_max);
  ret |= adp8860_write(client, ADP8860_BLDM3,
      pdata->l3_dark_dim);

  ret |= adp8860_write(client, ADP8860_L2_TRP, pdata->l2_trip);
  ret |= adp8860_write(client, ADP8860_L2_HYS, pdata->l2_hyst);
  ret |= adp8860_write(client, ADP8860_L3_TRP, pdata->l3_trip);
  ret |= adp8860_write(client, ADP8860_L3_HYS, pdata->l3_hyst);
  ret |= adp8860_write(client, ADP8860_CCFG, L2_EN | L3_EN |
      ALS_CCFG_VAL(pdata->abml_filt));
 }

 ret |= adp8860_write(client, ADP8860_CFGR,
   BL_CFGR_VAL(pdata->bl_fade_law, 0));

 ret |= adp8860_write(client, ADP8860_BLFR, FADE_VAL(pdata->bl_fade_in,
   pdata->bl_fade_out));

 ret |= adp8860_set_bits(client, ADP8860_MDCR, BLEN | DIM_EN | NSTBY |
   (data->gdwn_dis ? GDWN_DIS : 0));

 return ret;
}
