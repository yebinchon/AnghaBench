
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_typec {int regmap; } ;
struct tcpc_dev {int dummy; } ;
typedef enum typec_port_type { ____Placeholder_typec_port_type } typec_port_type ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;


 int EOPNOTSUPP ;


 int TYPEC_PORT_DRP ;
 int USBC_CONTROL1 ;
 unsigned int USBC_CONTROL1_CURSRC_UA_180 ;
 unsigned int USBC_CONTROL1_CURSRC_UA_330 ;
 unsigned int USBC_CONTROL1_CURSRC_UA_80 ;
 unsigned int USBC_CONTROL1_DRPTOGGLE_RANDOM ;
 unsigned int USBC_CONTROL1_MODE_DRP ;
 int regmap_write (int ,int ,unsigned int) ;
 struct wcove_typec* tcpc_to_wcove (struct tcpc_dev*) ;

__attribute__((used)) static int wcove_start_toggling(struct tcpc_dev *tcpc,
    enum typec_port_type port_type,
    enum typec_cc_status cc)
{
 struct wcove_typec *wcove = tcpc_to_wcove(tcpc);
 unsigned int usbc_ctrl;

 if (port_type != TYPEC_PORT_DRP)
  return -EOPNOTSUPP;

 usbc_ctrl = USBC_CONTROL1_MODE_DRP | USBC_CONTROL1_DRPTOGGLE_RANDOM;

 switch (cc) {
 case 129:
  usbc_ctrl |= USBC_CONTROL1_CURSRC_UA_180;
  break;
 case 128:
  usbc_ctrl |= USBC_CONTROL1_CURSRC_UA_330;
  break;
 default:
  usbc_ctrl |= USBC_CONTROL1_CURSRC_UA_80;
  break;
 }

 return regmap_write(wcove->regmap, USBC_CONTROL1, usbc_ctrl);
}
