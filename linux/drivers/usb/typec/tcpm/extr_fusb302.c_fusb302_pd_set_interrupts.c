
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fusb302_chip {int dummy; } ;


 int FUSB_REG_MASK ;
 int FUSB_REG_MASKA ;
 int FUSB_REG_MASKA_HARDRESET ;
 int FUSB_REG_MASKA_HARDSENT ;
 int FUSB_REG_MASKA_RETRYFAIL ;
 int FUSB_REG_MASKA_TX_SUCCESS ;
 int FUSB_REG_MASKB ;
 int FUSB_REG_MASKB_GCRCSENT ;
 int FUSB_REG_MASK_COLLISION ;
 int fusb302_i2c_clear_bits (struct fusb302_chip*,int ,int) ;
 int fusb302_i2c_set_bits (struct fusb302_chip*,int ,int) ;

__attribute__((used)) static int fusb302_pd_set_interrupts(struct fusb302_chip *chip, bool on)
{
 int ret = 0;
 u8 mask_interrupts = FUSB_REG_MASK_COLLISION;
 u8 maska_interrupts = FUSB_REG_MASKA_RETRYFAIL |
         FUSB_REG_MASKA_HARDSENT |
         FUSB_REG_MASKA_TX_SUCCESS |
         FUSB_REG_MASKA_HARDRESET;
 u8 maskb_interrupts = FUSB_REG_MASKB_GCRCSENT;

 ret = on ?
  fusb302_i2c_clear_bits(chip, FUSB_REG_MASK, mask_interrupts) :
  fusb302_i2c_set_bits(chip, FUSB_REG_MASK, mask_interrupts);
 if (ret < 0)
  return ret;
 ret = on ?
  fusb302_i2c_clear_bits(chip, FUSB_REG_MASKA, maska_interrupts) :
  fusb302_i2c_set_bits(chip, FUSB_REG_MASKA, maska_interrupts);
 if (ret < 0)
  return ret;
 ret = on ?
  fusb302_i2c_clear_bits(chip, FUSB_REG_MASKB, maskb_interrupts) :
  fusb302_i2c_set_bits(chip, FUSB_REG_MASKB, maskb_interrupts);
 return ret;
}
