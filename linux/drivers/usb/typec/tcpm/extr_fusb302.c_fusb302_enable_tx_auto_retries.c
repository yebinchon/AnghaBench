
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int dummy; } ;


 int FUSB_REG_CONTROL3 ;
 int FUSB_REG_CONTROL3_AUTO_RETRY ;
 int FUSB_REG_CONTROL3_N_RETRIES_3 ;
 int fusb302_i2c_set_bits (struct fusb302_chip*,int ,int) ;

__attribute__((used)) static int fusb302_enable_tx_auto_retries(struct fusb302_chip *chip)
{
 int ret = 0;

 ret = fusb302_i2c_set_bits(chip, FUSB_REG_CONTROL3,
       FUSB_REG_CONTROL3_N_RETRIES_3 |
       FUSB_REG_CONTROL3_AUTO_RETRY);

 return ret;
}
