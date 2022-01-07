
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_roothub {int list; } ;
struct device {int of_node; } ;


 int CONFIG_GENERIC_PHY ;
 int ENOMEM ;
 struct usb_phy_roothub* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ENABLED (int ) ;
 struct usb_phy_roothub* devm_kzalloc (struct device*,int,int ) ;
 int of_count_phandle_with_args (int ,char*,char*) ;
 int usb_phy_roothub_add_phy (struct device*,int,int *) ;

struct usb_phy_roothub *usb_phy_roothub_alloc(struct device *dev)
{
 struct usb_phy_roothub *phy_roothub;
 int i, num_phys, err;

 if (!IS_ENABLED(CONFIG_GENERIC_PHY))
  return ((void*)0);

 num_phys = of_count_phandle_with_args(dev->of_node, "phys",
           "#phy-cells");
 if (num_phys <= 0)
  return ((void*)0);

 phy_roothub = devm_kzalloc(dev, sizeof(*phy_roothub), GFP_KERNEL);
 if (!phy_roothub)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&phy_roothub->list);

 for (i = 0; i < num_phys; i++) {
  err = usb_phy_roothub_add_phy(dev, i, &phy_roothub->list);
  if (err)
   return ERR_PTR(err);
 }

 return phy_roothub;
}
