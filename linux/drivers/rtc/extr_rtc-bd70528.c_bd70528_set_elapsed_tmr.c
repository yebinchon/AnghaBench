
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rohm_regmap_dev {int regmap; } ;


 int BD70528_ELAPSED_STATE_BIT ;
 unsigned int BD70528_MASK_ELAPSED_TIMER_EN ;
 int BD70528_REG_ELAPSED_TIMER_EN ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int bd70528_set_elapsed_tmr(struct rohm_regmap_dev *bd70528,
       int enable, int *old_state)
{
 int ret;
 unsigned int ctrl_reg;
 ret = regmap_read(bd70528->regmap, BD70528_REG_ELAPSED_TIMER_EN,
     &ctrl_reg);
 if (ret)
  return ret;

 if (old_state) {
  if (ctrl_reg & BD70528_MASK_ELAPSED_TIMER_EN)
   *old_state |= BD70528_ELAPSED_STATE_BIT;
  else
   *old_state &= ~BD70528_ELAPSED_STATE_BIT;

  if ((!enable) == (!(*old_state & BD70528_ELAPSED_STATE_BIT)))
   return 0;
 }

 if (enable)
  ctrl_reg |= BD70528_MASK_ELAPSED_TIMER_EN;
 else
  ctrl_reg &= ~BD70528_MASK_ELAPSED_TIMER_EN;

 return regmap_write(bd70528->regmap, BD70528_REG_ELAPSED_TIMER_EN,
       ctrl_reg);
}
