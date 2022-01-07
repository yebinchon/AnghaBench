
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int dummy; } ;


 int FUSB_REG_RESET ;
 int FUSB_REG_RESET_PD_RESET ;
 int fusb302_i2c_set_bits (struct fusb302_chip*,int ,int ) ;

__attribute__((used)) static int fusb302_pd_reset(struct fusb302_chip *chip)
{
 return fusb302_i2c_set_bits(chip, FUSB_REG_RESET,
        FUSB_REG_RESET_PD_RESET);
}
