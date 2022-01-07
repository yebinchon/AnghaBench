
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int dummy; } ;


 int FUSB_REG_CONTROL3 ;
 int FUSB_REG_CONTROL3_SEND_HARDRESET ;
 int fusb302_i2c_set_bits (struct fusb302_chip*,int ,int ) ;

__attribute__((used)) static int fusb302_pd_send_hardreset(struct fusb302_chip *chip)
{
 return fusb302_i2c_set_bits(chip, FUSB_REG_CONTROL3,
        FUSB_REG_CONTROL3_SEND_HARDRESET);
}
