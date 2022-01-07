
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpci_data {int regmap; } ;
struct TYPE_2__ {int pd_transmit; int set_roles; int set_pd_rx; int start_toggling; int set_vconn; int set_polarity; int get_cc; int set_cc; int set_vbus; int get_vbus; int init; } ;
struct tcpci {int port; TYPE_1__ tcpc; struct device* dev; int regmap; struct tcpci_data* data; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct tcpci* ERR_CAST (int ) ;
 struct tcpci* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 struct tcpci* devm_kzalloc (struct device*,int,int ) ;
 int tcpci_get_cc ;
 int tcpci_get_vbus ;
 int tcpci_init ;
 int tcpci_parse_config (struct tcpci*) ;
 int tcpci_pd_transmit ;
 int tcpci_set_cc ;
 int tcpci_set_pd_rx ;
 int tcpci_set_polarity ;
 int tcpci_set_roles ;
 int tcpci_set_vbus ;
 int tcpci_set_vconn ;
 int tcpci_start_toggling ;
 int tcpm_register_port (struct device*,TYPE_1__*) ;

struct tcpci *tcpci_register_port(struct device *dev, struct tcpci_data *data)
{
 struct tcpci *tcpci;
 int err;

 tcpci = devm_kzalloc(dev, sizeof(*tcpci), GFP_KERNEL);
 if (!tcpci)
  return ERR_PTR(-ENOMEM);

 tcpci->dev = dev;
 tcpci->data = data;
 tcpci->regmap = data->regmap;

 tcpci->tcpc.init = tcpci_init;
 tcpci->tcpc.get_vbus = tcpci_get_vbus;
 tcpci->tcpc.set_vbus = tcpci_set_vbus;
 tcpci->tcpc.set_cc = tcpci_set_cc;
 tcpci->tcpc.get_cc = tcpci_get_cc;
 tcpci->tcpc.set_polarity = tcpci_set_polarity;
 tcpci->tcpc.set_vconn = tcpci_set_vconn;
 tcpci->tcpc.start_toggling = tcpci_start_toggling;

 tcpci->tcpc.set_pd_rx = tcpci_set_pd_rx;
 tcpci->tcpc.set_roles = tcpci_set_roles;
 tcpci->tcpc.pd_transmit = tcpci_pd_transmit;

 err = tcpci_parse_config(tcpci);
 if (err < 0)
  return ERR_PTR(err);

 tcpci->port = tcpm_register_port(tcpci->dev, &tcpci->tcpc);
 if (IS_ERR(tcpci->port))
  return ERR_CAST(tcpci->port);

 return tcpci;
}
