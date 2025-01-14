
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fusb302_chip {int cc1; int cc2; int intr_bc_lvl; int tcpm_port; int toggling_mode; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
typedef enum typec_cc_polarity { ____Placeholder_typec_cc_polarity } typec_cc_polarity ;


 int FUSB_REG_MASK ;
 int FUSB_REG_MASK_BC_LVL ;
 int FUSB_REG_STATUS0 ;
 scalar_t__ FUSB_REG_STATUS0_BC_LVL_MASK ;
 scalar_t__ FUSB_REG_STATUS1A_TOGSS_SNK1 ;
 int TOGGLING_MODE_OFF ;
 int TYPEC_CC_OPEN ;
 int TYPEC_POLARITY_CC1 ;
 int TYPEC_POLARITY_CC2 ;
 int* cc_polarity_name ;
 int fusb302_bc_lvl_to_cc (scalar_t__) ;
 int fusb302_i2c_clear_bits (struct fusb302_chip*,int ,int ) ;
 int fusb302_i2c_read (struct fusb302_chip*,int ,scalar_t__*) ;
 int fusb302_log (struct fusb302_chip*,char*,...) ;
 int fusb302_set_cc_polarity_and_pull (struct fusb302_chip*,int,int,int) ;
 int fusb302_set_toggling (struct fusb302_chip*,int ) ;
 int tcpm_cc_change (int ) ;
 int* typec_cc_status_name ;

__attribute__((used)) static int fusb302_handle_togdone_snk(struct fusb302_chip *chip,
          u8 togdone_result)
{
 int ret = 0;
 u8 status0;
 u8 bc_lvl;
 enum typec_cc_polarity cc_polarity;
 enum typec_cc_status cc_status_active, cc1, cc2;


 cc_polarity = (togdone_result == FUSB_REG_STATUS1A_TOGSS_SNK1) ?
        TYPEC_POLARITY_CC1 : TYPEC_POLARITY_CC2;
 ret = fusb302_set_cc_polarity_and_pull(chip, cc_polarity, 0, 1);
 if (ret < 0) {
  fusb302_log(chip, "cannot set cc polarity %s, ret=%d",
       cc_polarity_name[cc_polarity], ret);
  return ret;
 }

 ret = fusb302_i2c_read(chip, FUSB_REG_STATUS0, &status0);
 if (ret < 0)
  return ret;
 bc_lvl = status0 & FUSB_REG_STATUS0_BC_LVL_MASK;
 cc_status_active = fusb302_bc_lvl_to_cc(bc_lvl);

 if (cc_status_active == TYPEC_CC_OPEN) {
  fusb302_log(chip, "restart toggling as CC_OPEN detected");
  ret = fusb302_set_toggling(chip, chip->toggling_mode);
  return ret;
 }

 cc1 = (cc_polarity == TYPEC_POLARITY_CC1) ?
       cc_status_active : TYPEC_CC_OPEN;
 cc2 = (cc_polarity == TYPEC_POLARITY_CC2) ?
       cc_status_active : TYPEC_CC_OPEN;
 if ((chip->cc1 != cc1) || (chip->cc2 != cc2)) {
  chip->cc1 = cc1;
  chip->cc2 = cc2;
  tcpm_cc_change(chip->tcpm_port);
 }

 ret = fusb302_set_toggling(chip, TOGGLING_MODE_OFF);
 if (ret < 0) {
  fusb302_log(chip,
       "cannot set toggling mode off, ret=%d", ret);
  return ret;
 }

 ret = fusb302_i2c_clear_bits(chip, FUSB_REG_MASK, FUSB_REG_MASK_BC_LVL);
 if (ret < 0) {
  fusb302_log(chip,
       "cannot unmask bc_lcl interrupt, ret=%d", ret);
  return ret;
 }
 chip->intr_bc_lvl = 1;
 fusb302_log(chip, "detected cc1=%s, cc2=%s",
      typec_cc_status_name[cc1],
      typec_cc_status_name[cc2]);

 return ret;
}
