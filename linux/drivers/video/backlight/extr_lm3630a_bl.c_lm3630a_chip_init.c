
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3630a_platform_data {int pwm_ctrl; int leda_ctrl; int ledb_ctrl; int leda_init_brt; int ledb_init_brt; } ;
struct lm3630a_chip {int dev; struct lm3630a_platform_data* pdata; } ;


 int REG_BOOST ;
 int REG_BRT_A ;
 int REG_BRT_B ;
 int REG_CONFIG ;
 int REG_CTRL ;
 int REG_FILTER_STRENGTH ;
 int REG_I_A ;
 int REG_I_B ;
 int dev_err (int ,char*) ;
 int lm3630a_update (struct lm3630a_chip*,int ,int,int) ;
 int lm3630a_write (struct lm3630a_chip*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lm3630a_chip_init(struct lm3630a_chip *pchip)
{
 int rval;
 struct lm3630a_platform_data *pdata = pchip->pdata;

 usleep_range(1000, 2000);

 rval = lm3630a_write(pchip, REG_FILTER_STRENGTH, 0x03);

 rval |= lm3630a_update(pchip, REG_CONFIG, 0x07, pdata->pwm_ctrl);

 rval |= lm3630a_write(pchip, REG_BOOST, 0x38);

 rval |= lm3630a_update(pchip, REG_I_A, 0x1F, 0x1F);

 rval |= lm3630a_write(pchip, REG_I_B, 0x1F);

 rval |= lm3630a_update(pchip, REG_CTRL, 0x14, pdata->leda_ctrl);
 rval |= lm3630a_update(pchip, REG_CTRL, 0x0B, pdata->ledb_ctrl);
 usleep_range(1000, 2000);

 rval |= lm3630a_write(pchip, REG_BRT_A, pdata->leda_init_brt);
 rval |= lm3630a_write(pchip, REG_BRT_B, pdata->ledb_init_brt);

 if (rval < 0)
  dev_err(pchip->dev, "i2c failed to access register\n");
 return rval;
}
