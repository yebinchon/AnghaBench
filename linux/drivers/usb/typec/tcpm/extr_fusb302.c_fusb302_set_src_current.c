
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int src_current_status; } ;
typedef enum src_current_status { ____Placeholder_src_current_status } src_current_status ;


 int FUSB_REG_CONTROL0 ;
 int FUSB_REG_CONTROL0_HOST_CUR_DEF ;
 int FUSB_REG_CONTROL0_HOST_CUR_HIGH ;
 int FUSB_REG_CONTROL0_HOST_CUR_MASK ;
 int FUSB_REG_CONTROL0_HOST_CUR_MED ;



 int fusb302_i2c_mask_write (struct fusb302_chip*,int ,int ,int ) ;

__attribute__((used)) static int fusb302_set_src_current(struct fusb302_chip *chip,
       enum src_current_status status)
{
 int ret = 0;

 chip->src_current_status = status;
 switch (status) {
 case 130:
  ret = fusb302_i2c_mask_write(chip, FUSB_REG_CONTROL0,
          FUSB_REG_CONTROL0_HOST_CUR_MASK,
          FUSB_REG_CONTROL0_HOST_CUR_DEF);
  break;
 case 128:
  ret = fusb302_i2c_mask_write(chip, FUSB_REG_CONTROL0,
          FUSB_REG_CONTROL0_HOST_CUR_MASK,
          FUSB_REG_CONTROL0_HOST_CUR_MED);
  break;
 case 129:
  ret = fusb302_i2c_mask_write(chip, FUSB_REG_CONTROL0,
          FUSB_REG_CONTROL0_HOST_CUR_MASK,
          FUSB_REG_CONTROL0_HOST_CUR_HIGH);
  break;
 default:
  break;
 }

 return ret;
}
