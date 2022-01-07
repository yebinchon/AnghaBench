
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_padctl {struct tegra_xusb_pad* hsic; struct tegra_xusb_pad* ulpi; struct tegra_xusb_pad* usb2; struct tegra_xusb_pad* sata; struct tegra_xusb_pad* pcie; int dev; } ;
struct tegra_xusb_pad_soc {int name; TYPE_1__* ops; } ;
struct tegra_xusb_pad {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_pad* (* probe ) (struct tegra_xusb_padctl*,struct tegra_xusb_pad_soc const*,struct device_node*) ;} ;


 struct tegra_xusb_pad* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct tegra_xusb_pad*) ;
 int PTR_ERR (struct tegra_xusb_pad*) ;
 int dev_err (int ,char*,int ,int) ;
 int of_device_is_available (struct device_node*) ;
 scalar_t__ strcmp (int ,char*) ;
 struct tegra_xusb_pad* stub1 (struct tegra_xusb_padctl*,struct tegra_xusb_pad_soc const*,struct device_node*) ;
 struct device_node* tegra_xusb_find_pad_node (struct tegra_xusb_padctl*,int ) ;

__attribute__((used)) static struct tegra_xusb_pad *
tegra_xusb_pad_create(struct tegra_xusb_padctl *padctl,
        const struct tegra_xusb_pad_soc *soc)
{
 struct tegra_xusb_pad *pad;
 struct device_node *np;
 int err;

 np = tegra_xusb_find_pad_node(padctl, soc->name);
 if (!np || !of_device_is_available(np))
  return ((void*)0);

 pad = soc->ops->probe(padctl, soc, np);
 if (IS_ERR(pad)) {
  err = PTR_ERR(pad);
  dev_err(padctl->dev, "failed to create pad %s: %d\n",
   soc->name, err);
  return ERR_PTR(err);
 }


 if (strcmp(soc->name, "pcie") == 0)
  padctl->pcie = pad;

 if (strcmp(soc->name, "sata") == 0)
  padctl->sata = pad;

 if (strcmp(soc->name, "usb2") == 0)
  padctl->usb2 = pad;

 if (strcmp(soc->name, "ulpi") == 0)
  padctl->ulpi = pad;

 if (strcmp(soc->name, "hsic") == 0)
  padctl->hsic = pad;

 return pad;
}
