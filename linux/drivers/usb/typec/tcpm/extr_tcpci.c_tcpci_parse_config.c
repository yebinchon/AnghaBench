
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fwnode; } ;
struct tcpci {int controls_vbus; int dev; TYPE_1__ tcpc; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int device_get_named_child_node (int ,char*) ;

__attribute__((used)) static int tcpci_parse_config(struct tcpci *tcpci)
{
 tcpci->controls_vbus = 1;

 tcpci->tcpc.fwnode = device_get_named_child_node(tcpci->dev,
        "connector");
 if (!tcpci->tcpc.fwnode) {
  dev_err(tcpci->dev, "Can't find connector node.\n");
  return -EINVAL;
 }

 return 0;
}
