
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci {int regmap; } ;
struct tcpc_dev {int dummy; } ;


 int TCPC_CMD_DISABLE_SINK_VBUS ;
 int TCPC_CMD_DISABLE_SRC_VBUS ;
 int TCPC_CMD_SINK_VBUS ;
 int TCPC_CMD_SRC_VBUS_DEFAULT ;
 int TCPC_COMMAND ;
 int regmap_write (int ,int ,int ) ;
 struct tcpci* tcpc_to_tcpci (struct tcpc_dev*) ;

__attribute__((used)) static int tcpci_set_vbus(struct tcpc_dev *tcpc, bool source, bool sink)
{
 struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
 int ret;



 if (!source) {
  ret = regmap_write(tcpci->regmap, TCPC_COMMAND,
       TCPC_CMD_DISABLE_SRC_VBUS);
  if (ret < 0)
   return ret;
 }

 if (!sink) {
  ret = regmap_write(tcpci->regmap, TCPC_COMMAND,
       TCPC_CMD_DISABLE_SINK_VBUS);
  if (ret < 0)
   return ret;
 }

 if (source) {
  ret = regmap_write(tcpci->regmap, TCPC_COMMAND,
       TCPC_CMD_SRC_VBUS_DEFAULT);
  if (ret < 0)
   return ret;
 }

 if (sink) {
  ret = regmap_write(tcpci->regmap, TCPC_COMMAND,
       TCPC_CMD_SINK_VBUS);
  if (ret < 0)
   return ret;
 }

 return 0;
}
