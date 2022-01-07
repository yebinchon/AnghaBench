
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fusb302_chip {size_t src_current_status; int toggling_mode; int cc1; int cc2; int intr_comp_chng; int tcpm_port; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
typedef enum typec_cc_polarity { ____Placeholder_typec_cc_polarity } typec_cc_polarity ;
typedef enum toggling_mode { ____Placeholder_toggling_mode } toggling_mode ;


 int FUSB_REG_MASK ;
 int FUSB_REG_MASK_COMP_CHNG ;
 int FUSB_REG_MEASURE ;
 scalar_t__ FUSB_REG_STATUS1A_TOGSS_SRC1 ;
 int TOGGLING_MODE_OFF ;
 int TYPEC_CC_OPEN ;
 int TYPEC_CC_RA ;
 int TYPEC_CC_RD ;
 int TYPEC_POLARITY_CC1 ;
 int TYPEC_POLARITY_CC2 ;
 int* cc_polarity_name ;
 int fusb302_get_src_cc_status (struct fusb302_chip*,int,int*) ;
 int fusb302_i2c_clear_bits (struct fusb302_chip*,int ,int ) ;
 int fusb302_i2c_write (struct fusb302_chip*,int ,scalar_t__) ;
 int fusb302_log (struct fusb302_chip*,char*,int,...) ;
 int fusb302_set_cc_polarity_and_pull (struct fusb302_chip*,int,int,int) ;
 int fusb302_set_toggling (struct fusb302_chip*,int) ;
 scalar_t__* rd_mda_value ;
 int tcpm_cc_change (int ) ;
 int* typec_cc_status_name ;

__attribute__((used)) static int fusb302_handle_togdone_src(struct fusb302_chip *chip,
          u8 togdone_result)
{






 int ret = 0;
 u8 rd_mda = rd_mda_value[chip->src_current_status];
 enum toggling_mode toggling_mode = chip->toggling_mode;
 enum typec_cc_polarity cc_polarity;
 enum typec_cc_status cc1, cc2;






 if (togdone_result == FUSB_REG_STATUS1A_TOGSS_SRC1)
  ret = fusb302_get_src_cc_status(chip, TYPEC_POLARITY_CC1, &cc1);
 else
  ret = fusb302_get_src_cc_status(chip, TYPEC_POLARITY_CC2, &cc2);
 if (ret < 0)
  return ret;

 ret = fusb302_set_toggling(chip, TOGGLING_MODE_OFF);
 if (ret < 0) {
  fusb302_log(chip, "cannot set toggling mode off, ret=%d", ret);
  return ret;
 }

 if (togdone_result == FUSB_REG_STATUS1A_TOGSS_SRC1)
  ret = fusb302_get_src_cc_status(chip, TYPEC_POLARITY_CC2, &cc2);
 else
  ret = fusb302_get_src_cc_status(chip, TYPEC_POLARITY_CC1, &cc1);
 if (ret < 0)
  return ret;


 if (cc1 == TYPEC_CC_RD &&
   (cc2 == TYPEC_CC_OPEN || cc2 == TYPEC_CC_RA)) {
  cc_polarity = TYPEC_POLARITY_CC1;
 } else if (cc2 == TYPEC_CC_RD &&
      (cc1 == TYPEC_CC_OPEN || cc1 == TYPEC_CC_RA)) {
  cc_polarity = TYPEC_POLARITY_CC2;
 } else {
  fusb302_log(chip, "unexpected CC status cc1=%s, cc2=%s, restarting toggling",
       typec_cc_status_name[cc1],
       typec_cc_status_name[cc2]);
  return fusb302_set_toggling(chip, toggling_mode);
 }

 ret = fusb302_set_cc_polarity_and_pull(chip, cc_polarity, 1, 0);
 if (ret < 0) {
  fusb302_log(chip, "cannot set cc polarity %s, ret=%d",
       cc_polarity_name[cc_polarity], ret);
  return ret;
 }

 if ((chip->cc1 != cc1) || (chip->cc2 != cc2)) {
  chip->cc1 = cc1;
  chip->cc2 = cc2;
  tcpm_cc_change(chip->tcpm_port);
 }

 ret = fusb302_i2c_write(chip, FUSB_REG_MEASURE, rd_mda);
 if (ret < 0)
  return ret;

 ret = fusb302_i2c_clear_bits(chip, FUSB_REG_MASK,
         FUSB_REG_MASK_COMP_CHNG);
 if (ret < 0) {
  fusb302_log(chip,
       "cannot unmask comp_chng interrupt, ret=%d", ret);
  return ret;
 }
 chip->intr_comp_chng = 1;
 fusb302_log(chip, "detected cc1=%s, cc2=%s",
      typec_cc_status_name[cc1],
      typec_cc_status_name[cc2]);

 return ret;
}
