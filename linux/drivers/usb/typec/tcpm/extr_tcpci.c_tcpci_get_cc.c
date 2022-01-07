
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci {int regmap; } ;
struct tcpc_dev {int dummy; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;


 int TCPC_CC_STATUS ;
 unsigned int TCPC_CC_STATUS_CC1_MASK ;
 unsigned int TCPC_CC_STATUS_CC1_SHIFT ;
 unsigned int TCPC_CC_STATUS_CC2_MASK ;
 unsigned int TCPC_CC_STATUS_CC2_SHIFT ;
 unsigned int TCPC_CC_STATUS_TERM ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct tcpci* tcpc_to_tcpci (struct tcpc_dev*) ;
 int tcpci_to_typec_cc (unsigned int,unsigned int) ;

__attribute__((used)) static int tcpci_get_cc(struct tcpc_dev *tcpc,
   enum typec_cc_status *cc1, enum typec_cc_status *cc2)
{
 struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
 unsigned int reg;
 int ret;

 ret = regmap_read(tcpci->regmap, TCPC_CC_STATUS, &reg);
 if (ret < 0)
  return ret;

 *cc1 = tcpci_to_typec_cc((reg >> TCPC_CC_STATUS_CC1_SHIFT) &
     TCPC_CC_STATUS_CC1_MASK,
     reg & TCPC_CC_STATUS_TERM);
 *cc2 = tcpci_to_typec_cc((reg >> TCPC_CC_STATUS_CC2_SHIFT) &
     TCPC_CC_STATUS_CC2_MASK,
     reg & TCPC_CC_STATUS_TERM);

 return 0;
}
