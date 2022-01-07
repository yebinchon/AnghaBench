
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int intr_bc_lvl; int intr_comp_chng; int intr_togdone; int toggling_mode; void* cc2; void* cc1; int vconn_on; } ;
typedef enum toggling_mode { ____Placeholder_toggling_mode } toggling_mode ;


 int FUSB_REG_CONTROL2 ;
 int FUSB_REG_CONTROL2_MODE_DFP ;
 int FUSB_REG_CONTROL2_MODE_DRP ;
 int FUSB_REG_CONTROL2_MODE_MASK ;
 int FUSB_REG_CONTROL2_MODE_NONE ;
 int FUSB_REG_CONTROL2_MODE_UFP ;
 int FUSB_REG_CONTROL2_TOGGLE ;
 int FUSB_REG_MASK ;
 int FUSB_REG_MASKA ;
 int FUSB_REG_MASKA_TOGDONE ;
 int FUSB_REG_MASK_BC_LVL ;
 int FUSB_REG_MASK_COMP_CHNG ;




 void* TYPEC_CC_OPEN ;
 int WARN (int ,char*) ;
 int fusb302_i2c_clear_bits (struct fusb302_chip*,int ,int) ;
 int fusb302_i2c_mask_write (struct fusb302_chip*,int ,int ,int ) ;
 int fusb302_i2c_set_bits (struct fusb302_chip*,int ,int) ;

__attribute__((used)) static int fusb302_set_toggling(struct fusb302_chip *chip,
    enum toggling_mode mode)
{
 int ret = 0;


 ret = fusb302_i2c_clear_bits(chip, FUSB_REG_CONTROL2,
         FUSB_REG_CONTROL2_TOGGLE);
 if (ret < 0)
  return ret;

 ret = fusb302_i2c_set_bits(chip, FUSB_REG_MASK,
       FUSB_REG_MASK_BC_LVL |
       FUSB_REG_MASK_COMP_CHNG);
 if (ret < 0)
  return ret;
 chip->intr_bc_lvl = 0;
 chip->intr_comp_chng = 0;

 switch (mode) {
 case 130:
  ret = fusb302_i2c_mask_write(chip, FUSB_REG_CONTROL2,
          FUSB_REG_CONTROL2_MODE_MASK,
          FUSB_REG_CONTROL2_MODE_NONE);
  if (ret < 0)
   return ret;
  break;
 case 129:
  ret = fusb302_i2c_mask_write(chip, FUSB_REG_CONTROL2,
          FUSB_REG_CONTROL2_MODE_MASK,
          FUSB_REG_CONTROL2_MODE_UFP);
  if (ret < 0)
   return ret;
  break;
 case 128:
  ret = fusb302_i2c_mask_write(chip, FUSB_REG_CONTROL2,
          FUSB_REG_CONTROL2_MODE_MASK,
          FUSB_REG_CONTROL2_MODE_DFP);
  if (ret < 0)
   return ret;
  break;
 case 131:
  ret = fusb302_i2c_mask_write(chip, FUSB_REG_CONTROL2,
          FUSB_REG_CONTROL2_MODE_MASK,
          FUSB_REG_CONTROL2_MODE_DRP);
  if (ret < 0)
   return ret;
  break;
 default:
  break;
 }

 if (mode == 130) {

  ret = fusb302_i2c_set_bits(chip, FUSB_REG_MASKA,
        FUSB_REG_MASKA_TOGDONE);
  if (ret < 0)
   return ret;
  chip->intr_togdone = 0;
 } else {

  WARN(chip->vconn_on, "Vconn is on during toggle start");

  ret = fusb302_i2c_clear_bits(chip, FUSB_REG_MASKA,
          FUSB_REG_MASKA_TOGDONE);
  if (ret < 0)
   return ret;
  chip->intr_togdone = 1;

  ret = fusb302_i2c_set_bits(chip, FUSB_REG_CONTROL2,
        FUSB_REG_CONTROL2_TOGGLE);
  if (ret < 0)
   return ret;

  chip->cc1 = TYPEC_CC_OPEN;
  chip->cc2 = TYPEC_CC_OPEN;
 }
 chip->toggling_mode = mode;

 return ret;
}
