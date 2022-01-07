
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci {int regmap; } ;
struct tcpc_dev {int dummy; } ;


 int TCPC_RX_DETECT ;
 unsigned int TCPC_RX_DETECT_HARD_RESET ;
 unsigned int TCPC_RX_DETECT_SOP ;
 int regmap_write (int ,int ,unsigned int) ;
 struct tcpci* tcpc_to_tcpci (struct tcpc_dev*) ;

__attribute__((used)) static int tcpci_set_pd_rx(struct tcpc_dev *tcpc, bool enable)
{
 struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
 unsigned int reg = 0;
 int ret;

 if (enable)
  reg = TCPC_RX_DETECT_SOP | TCPC_RX_DETECT_HARD_RESET;
 ret = regmap_write(tcpci->regmap, TCPC_RX_DETECT, reg);
 if (ret < 0)
  return ret;

 return 0;
}
