
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lp8788_bl_config {int bl_mode; int dim_mode; int full_scale; int rise_time; int fall_time; int pwm_pol; } ;
struct lp8788_bl {int mode; TYPE_1__* lp; struct lp8788_backlight_platform_data* pdata; } ;
struct lp8788_backlight_platform_data {int bl_mode; int dim_mode; int full_scale; int rise_time; int fall_time; int pwm_pol; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;


 int LP8788_BL_CONFIG ;
 int LP8788_BL_DIM_MODE_SHIFT ;
 int LP8788_BL_EN ;
 int LP8788_BL_FULLSCALE_SHIFT ;
 int LP8788_BL_PWM_INPUT_EN ;
 int LP8788_BL_PWM_POLARITY_SHIFT ;
 int LP8788_BL_RAMP ;
 int LP8788_BL_RAMP_RISE_SHIFT ;

 struct lp8788_bl_config default_bl_config ;
 int dev_err (int ,char*,int) ;
 int lp8788_write_byte (TYPE_1__*,int ,int) ;

__attribute__((used)) static int lp8788_backlight_configure(struct lp8788_bl *bl)
{
 struct lp8788_backlight_platform_data *pdata = bl->pdata;
 struct lp8788_bl_config *cfg = &default_bl_config;
 int ret;
 u8 val;





 if (pdata) {
  cfg->bl_mode = pdata->bl_mode;
  cfg->dim_mode = pdata->dim_mode;
  cfg->full_scale = pdata->full_scale;
  cfg->rise_time = pdata->rise_time;
  cfg->fall_time = pdata->fall_time;
  cfg->pwm_pol = pdata->pwm_pol;
 }


 val = (cfg->rise_time << LP8788_BL_RAMP_RISE_SHIFT) | cfg->fall_time;
 ret = lp8788_write_byte(bl->lp, LP8788_BL_RAMP, val);
 if (ret)
  return ret;


 val = (cfg->full_scale << LP8788_BL_FULLSCALE_SHIFT) |
  (cfg->dim_mode << LP8788_BL_DIM_MODE_SHIFT);


 switch (cfg->bl_mode) {
 case 128:
  val |= LP8788_BL_EN;
  break;
 case 130:
 case 129:
  val |= LP8788_BL_EN | LP8788_BL_PWM_INPUT_EN |
   (cfg->pwm_pol << LP8788_BL_PWM_POLARITY_SHIFT);
  break;
 default:
  dev_err(bl->lp->dev, "invalid mode: %d\n", cfg->bl_mode);
  return -EINVAL;
 }

 bl->mode = cfg->bl_mode;

 return lp8788_write_byte(bl->lp, LP8788_BL_CONFIG, val);
}
