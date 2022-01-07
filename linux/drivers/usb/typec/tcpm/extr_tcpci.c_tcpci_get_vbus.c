
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci {int regmap; } ;
struct tcpc_dev {int dummy; } ;


 int TCPC_POWER_STATUS ;
 unsigned int TCPC_POWER_STATUS_VBUS_PRES ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct tcpci* tcpc_to_tcpci (struct tcpc_dev*) ;

__attribute__((used)) static int tcpci_get_vbus(struct tcpc_dev *tcpc)
{
 struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
 unsigned int reg;
 int ret;

 ret = regmap_read(tcpci->regmap, TCPC_POWER_STATUS, &reg);
 if (ret < 0)
  return ret;

 return !!(reg & TCPC_POWER_STATUS_VBUS_PRES);
}
