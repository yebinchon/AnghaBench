
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

__attribute__((used)) static enum typec_cc_status tcpci_to_typec_cc(unsigned int cc, bool sink)
{
 switch (cc) {
 case 0x1:
  return sink ? TYPEC_CC_RP_DEF : TYPEC_CC_RA;
 case 0x2:
  return sink ? TYPEC_CC_RP_1_5 : TYPEC_CC_RD;
 case 0x3:
  if (sink)
   return TYPEC_CC_RP_3_0;

 case 0x0:
 default:
  return TYPEC_CC_OPEN;
 }
}
