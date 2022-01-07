
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci {int regmap; } ;
struct tcpc_dev {int dummy; } ;
typedef enum typec_cc_polarity { ____Placeholder_typec_cc_polarity } typec_cc_polarity ;


 int TCPC_ROLE_CTRL ;
 unsigned int TCPC_ROLE_CTRL_CC1_SHIFT ;
 unsigned int TCPC_ROLE_CTRL_CC2_SHIFT ;
 unsigned int TCPC_ROLE_CTRL_CC_OPEN ;
 int TCPC_TCPC_CTRL ;
 unsigned int TCPC_TCPC_CTRL_ORIENTATION ;
 int TYPEC_POLARITY_CC2 ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct tcpci* tcpc_to_tcpci (struct tcpc_dev*) ;

__attribute__((used)) static int tcpci_set_polarity(struct tcpc_dev *tcpc,
         enum typec_cc_polarity polarity)
{
 struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
 unsigned int reg;
 int ret;


 ret = regmap_read(tcpci->regmap, TCPC_ROLE_CTRL, &reg);
 if (ret < 0)
  return ret;

 if (polarity == TYPEC_POLARITY_CC2)
  reg |= TCPC_ROLE_CTRL_CC_OPEN << TCPC_ROLE_CTRL_CC1_SHIFT;
 else
  reg |= TCPC_ROLE_CTRL_CC_OPEN << TCPC_ROLE_CTRL_CC2_SHIFT;
 ret = regmap_write(tcpci->regmap, TCPC_ROLE_CTRL, reg);
 if (ret < 0)
  return ret;

 return regmap_write(tcpci->regmap, TCPC_TCPC_CTRL,
      (polarity == TYPEC_POLARITY_CC2) ?
      TCPC_TCPC_CTRL_ORIENTATION : 0);
}
