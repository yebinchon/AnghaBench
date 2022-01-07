
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_typec {int regmap; } ;
struct tcpc_dev {int dummy; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;


 int EINVAL ;





 int USBC_CONTROL1 ;
 unsigned int USBC_CONTROL1_CURSRC_UA_180 ;
 unsigned int USBC_CONTROL1_CURSRC_UA_330 ;
 unsigned int USBC_CONTROL1_CURSRC_UA_80 ;
 unsigned int USBC_CONTROL1_MODE_SNK ;
 unsigned int USBC_CONTROL1_MODE_SRC ;
 int regmap_write (int ,int ,unsigned int) ;
 struct wcove_typec* tcpc_to_wcove (struct tcpc_dev*) ;

__attribute__((used)) static int wcove_set_cc(struct tcpc_dev *tcpc, enum typec_cc_status cc)
{
 struct wcove_typec *wcove = tcpc_to_wcove(tcpc);
 unsigned int ctrl;

 switch (cc) {
 case 131:
  ctrl = USBC_CONTROL1_MODE_SNK;
  break;
 case 128:
  ctrl = USBC_CONTROL1_CURSRC_UA_80 | USBC_CONTROL1_MODE_SRC;
  break;
 case 130:
  ctrl = USBC_CONTROL1_CURSRC_UA_180 | USBC_CONTROL1_MODE_SRC;
  break;
 case 129:
  ctrl = USBC_CONTROL1_CURSRC_UA_330 | USBC_CONTROL1_MODE_SRC;
  break;
 case 132:
  ctrl = 0;
  break;
 default:
  return -EINVAL;
 }

 return regmap_write(wcove->regmap, USBC_CONTROL1, ctrl);
}
