
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci_data {int dummy; } ;
struct tcpci {int dummy; } ;
struct rt1711h_chip {int dummy; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;


 int TCPC_ROLE_CTRL ;
 unsigned int TCPC_ROLE_CTRL_CC1_SHIFT ;
 unsigned int TCPC_ROLE_CTRL_CC2_SHIFT ;
 unsigned int TCPC_ROLE_CTRL_CC_RD ;
 unsigned int TCPC_ROLE_CTRL_CC_RP ;
 unsigned int TCPC_ROLE_CTRL_RP_VAL_1_5 ;
 unsigned int TCPC_ROLE_CTRL_RP_VAL_3_0 ;
 unsigned int TCPC_ROLE_CTRL_RP_VAL_DEF ;
 unsigned int TCPC_ROLE_CTRL_RP_VAL_SHIFT ;
 int TYPEC_CC_RD ;



 int rt1711h_write8 (struct rt1711h_chip*,int ,unsigned int) ;
 struct rt1711h_chip* tdata_to_rt1711h (struct tcpci_data*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt1711h_start_drp_toggling(struct tcpci *tcpci,
          struct tcpci_data *tdata,
          enum typec_cc_status cc)
{
 struct rt1711h_chip *chip = tdata_to_rt1711h(tdata);
 int ret;
 unsigned int reg = 0;

 switch (cc) {
 default:
 case 128:
  reg |= (TCPC_ROLE_CTRL_RP_VAL_DEF <<
   TCPC_ROLE_CTRL_RP_VAL_SHIFT);
  break;
 case 130:
  reg |= (TCPC_ROLE_CTRL_RP_VAL_1_5 <<
   TCPC_ROLE_CTRL_RP_VAL_SHIFT);
  break;
 case 129:
  reg |= (TCPC_ROLE_CTRL_RP_VAL_3_0 <<
   TCPC_ROLE_CTRL_RP_VAL_SHIFT);
  break;
 }

 if (cc == TYPEC_CC_RD)
  reg |= (TCPC_ROLE_CTRL_CC_RD << TCPC_ROLE_CTRL_CC1_SHIFT) |
      (TCPC_ROLE_CTRL_CC_RD << TCPC_ROLE_CTRL_CC2_SHIFT);
 else
  reg |= (TCPC_ROLE_CTRL_CC_RP << TCPC_ROLE_CTRL_CC1_SHIFT) |
      (TCPC_ROLE_CTRL_CC_RP << TCPC_ROLE_CTRL_CC2_SHIFT);

 ret = rt1711h_write8(chip, TCPC_ROLE_CTRL, reg);
 if (ret < 0)
  return ret;
 usleep_range(500, 1000);

 return 0;
}
