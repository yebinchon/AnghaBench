
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;


 int TYPEC_CC_OPEN ;
 int TYPEC_CC_RA ;
 int TYPEC_CC_RD ;
 int TYPEC_CC_RP_1_5 ;
 int TYPEC_CC_RP_3_0 ;
 int TYPEC_CC_RP_DEF ;
 unsigned int UCSC_CC_STATUS_PWRDEFSNK ;
 unsigned int UCSC_CC_STATUS_PWR_1P5A_SNK ;
 unsigned int UCSC_CC_STATUS_PWR_3A_SNK ;
 int UCSC_CC_STATUS_RX (unsigned int) ;
 unsigned int UCSC_CC_STATUS_SNK_RP ;



__attribute__((used)) static enum typec_cc_status wcove_to_typec_cc(unsigned int cc)
{
 if (cc & UCSC_CC_STATUS_SNK_RP) {
  if (cc & UCSC_CC_STATUS_PWRDEFSNK)
   return TYPEC_CC_RP_DEF;
  else if (cc & UCSC_CC_STATUS_PWR_1P5A_SNK)
   return TYPEC_CC_RP_1_5;
  else if (cc & UCSC_CC_STATUS_PWR_3A_SNK)
   return TYPEC_CC_RP_3_0;
 } else {
  switch (UCSC_CC_STATUS_RX(cc)) {
  case 128:
   return TYPEC_CC_RD;
  case 129:
   return TYPEC_CC_RA;
  default:
   break;
  }
 }
 return TYPEC_CC_OPEN;
}
