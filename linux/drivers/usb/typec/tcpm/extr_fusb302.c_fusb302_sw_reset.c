
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int dummy; } ;


 int FUSB_REG_RESET ;
 int FUSB_REG_RESET_SW_RESET ;
 int fusb302_i2c_write (struct fusb302_chip*,int ,int ) ;
 int fusb302_log (struct fusb302_chip*,char*,...) ;

__attribute__((used)) static int fusb302_sw_reset(struct fusb302_chip *chip)
{
 int ret = 0;

 ret = fusb302_i2c_write(chip, FUSB_REG_RESET,
    FUSB_REG_RESET_SW_RESET);
 if (ret < 0)
  fusb302_log(chip, "cannot sw reset the chip, ret=%d", ret);
 else
  fusb302_log(chip, "sw reset");

 return ret;
}
