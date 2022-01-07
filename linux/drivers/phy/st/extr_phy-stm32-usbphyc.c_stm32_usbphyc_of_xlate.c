
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_usbphyc_phy {int index; struct phy* phy; } ;
struct stm32_usbphyc {int nphys; scalar_t__ switch_setup; struct stm32_usbphyc_phy** phys; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct phy {TYPE_1__ dev; } ;
struct of_phandle_args {int args_count; scalar_t__* args; struct device_node* np; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct phy* ERR_PTR (int ) ;
 int dev_err (struct device*,char*,...) ;
 struct stm32_usbphyc* dev_get_drvdata (struct device*) ;
 int stm32_usbphyc_switch_setup (struct stm32_usbphyc*,scalar_t__) ;

__attribute__((used)) static struct phy *stm32_usbphyc_of_xlate(struct device *dev,
       struct of_phandle_args *args)
{
 struct stm32_usbphyc *usbphyc = dev_get_drvdata(dev);
 struct stm32_usbphyc_phy *usbphyc_phy = ((void*)0);
 struct device_node *phynode = args->np;
 int port = 0;

 for (port = 0; port < usbphyc->nphys; port++) {
  if (phynode == usbphyc->phys[port]->phy->dev.of_node) {
   usbphyc_phy = usbphyc->phys[port];
   break;
  }
 }
 if (!usbphyc_phy) {
  dev_err(dev, "failed to find phy\n");
  return ERR_PTR(-EINVAL);
 }

 if (((usbphyc_phy->index == 0) && (args->args_count != 0)) ||
     ((usbphyc_phy->index == 1) && (args->args_count != 1))) {
  dev_err(dev, "invalid number of cells for phy port%d\n",
   usbphyc_phy->index);
  return ERR_PTR(-EINVAL);
 }


 if (usbphyc_phy->index == 1) {
  if (usbphyc->switch_setup < 0) {
   stm32_usbphyc_switch_setup(usbphyc, args->args[0]);
  } else {
   if (args->args[0] != usbphyc->switch_setup) {
    dev_err(dev, "phy port1 already used\n");
    return ERR_PTR(-EBUSY);
   }
  }
 }

 return usbphyc_phy->phy;
}
