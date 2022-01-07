
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum typec_pwr_opmode { ____Placeholder_typec_pwr_opmode } typec_pwr_opmode ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;





 int TYPEC_PWR_MODE_1_5A ;
 int TYPEC_PWR_MODE_3_0A ;
 int TYPEC_PWR_MODE_USB ;

__attribute__((used)) static enum typec_pwr_opmode tcpm_get_pwr_opmode(enum typec_cc_status cc)
{
 switch (cc) {
 case 130:
  return TYPEC_PWR_MODE_1_5A;
 case 129:
  return TYPEC_PWR_MODE_3_0A;
 case 128:
 default:
  return TYPEC_PWR_MODE_USB;
 }
}
