
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci {int regmap; } ;
struct tcpc_dev {int dummy; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;


 int TCPC_ROLE_CTRL ;
 unsigned int TCPC_ROLE_CTRL_CC1_SHIFT ;
 unsigned int TCPC_ROLE_CTRL_CC2_SHIFT ;
 unsigned int TCPC_ROLE_CTRL_CC_OPEN ;
 unsigned int TCPC_ROLE_CTRL_CC_RA ;
 unsigned int TCPC_ROLE_CTRL_CC_RD ;
 unsigned int TCPC_ROLE_CTRL_CC_RP ;
 unsigned int TCPC_ROLE_CTRL_RP_VAL_1_5 ;
 unsigned int TCPC_ROLE_CTRL_RP_VAL_3_0 ;
 unsigned int TCPC_ROLE_CTRL_RP_VAL_DEF ;
 unsigned int TCPC_ROLE_CTRL_RP_VAL_SHIFT ;






 int regmap_write (int ,int ,unsigned int) ;
 struct tcpci* tcpc_to_tcpci (struct tcpc_dev*) ;

__attribute__((used)) static int tcpci_set_cc(struct tcpc_dev *tcpc, enum typec_cc_status cc)
{
 struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
 unsigned int reg;
 int ret;

 switch (cc) {
 case 132:
  reg = (TCPC_ROLE_CTRL_CC_RA << TCPC_ROLE_CTRL_CC1_SHIFT) |
   (TCPC_ROLE_CTRL_CC_RA << TCPC_ROLE_CTRL_CC2_SHIFT);
  break;
 case 131:
  reg = (TCPC_ROLE_CTRL_CC_RD << TCPC_ROLE_CTRL_CC1_SHIFT) |
   (TCPC_ROLE_CTRL_CC_RD << TCPC_ROLE_CTRL_CC2_SHIFT);
  break;
 case 128:
  reg = (TCPC_ROLE_CTRL_CC_RP << TCPC_ROLE_CTRL_CC1_SHIFT) |
   (TCPC_ROLE_CTRL_CC_RP << TCPC_ROLE_CTRL_CC2_SHIFT) |
   (TCPC_ROLE_CTRL_RP_VAL_DEF <<
    TCPC_ROLE_CTRL_RP_VAL_SHIFT);
  break;
 case 130:
  reg = (TCPC_ROLE_CTRL_CC_RP << TCPC_ROLE_CTRL_CC1_SHIFT) |
   (TCPC_ROLE_CTRL_CC_RP << TCPC_ROLE_CTRL_CC2_SHIFT) |
   (TCPC_ROLE_CTRL_RP_VAL_1_5 <<
    TCPC_ROLE_CTRL_RP_VAL_SHIFT);
  break;
 case 129:
  reg = (TCPC_ROLE_CTRL_CC_RP << TCPC_ROLE_CTRL_CC1_SHIFT) |
   (TCPC_ROLE_CTRL_CC_RP << TCPC_ROLE_CTRL_CC2_SHIFT) |
   (TCPC_ROLE_CTRL_RP_VAL_3_0 <<
    TCPC_ROLE_CTRL_RP_VAL_SHIFT);
  break;
 case 133:
 default:
  reg = (TCPC_ROLE_CTRL_CC_OPEN << TCPC_ROLE_CTRL_CC1_SHIFT) |
   (TCPC_ROLE_CTRL_CC_OPEN << TCPC_ROLE_CTRL_CC2_SHIFT);
  break;
 }

 ret = regmap_write(tcpci->regmap, TCPC_ROLE_CTRL, reg);
 if (ret < 0)
  return ret;

 return 0;
}
