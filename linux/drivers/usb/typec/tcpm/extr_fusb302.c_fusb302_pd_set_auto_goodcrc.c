
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int dummy; } ;


 int FUSB_REG_SWITCHES1 ;
 int FUSB_REG_SWITCHES1_AUTO_GCRC ;
 int fusb302_i2c_clear_bits (struct fusb302_chip*,int ,int ) ;
 int fusb302_i2c_set_bits (struct fusb302_chip*,int ,int ) ;

__attribute__((used)) static int fusb302_pd_set_auto_goodcrc(struct fusb302_chip *chip, bool on)
{
 if (on)
  return fusb302_i2c_set_bits(chip, FUSB_REG_SWITCHES1,
         FUSB_REG_SWITCHES1_AUTO_GCRC);
 return fusb302_i2c_clear_bits(chip, FUSB_REG_SWITCHES1,
         FUSB_REG_SWITCHES1_AUTO_GCRC);
}
