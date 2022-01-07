
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_roothub {int list; struct phy* phy; } ;
struct phy {int dummy; } ;
struct list_head {int dummy; } ;
struct device {int of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 struct usb_phy_roothub* devm_kzalloc (struct device*,int,int ) ;
 struct phy* devm_of_phy_get_by_index (struct device*,int ,int) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static int usb_phy_roothub_add_phy(struct device *dev, int index,
       struct list_head *list)
{
 struct usb_phy_roothub *roothub_entry;
 struct phy *phy;

 phy = devm_of_phy_get_by_index(dev, dev->of_node, index);
 if (IS_ERR(phy)) {
  if (PTR_ERR(phy) == -ENODEV)
   return 0;
  else
   return PTR_ERR(phy);
 }

 roothub_entry = devm_kzalloc(dev, sizeof(*roothub_entry), GFP_KERNEL);
 if (!roothub_entry)
  return -ENOMEM;

 INIT_LIST_HEAD(&roothub_entry->list);

 roothub_entry->phy = phy;

 list_add_tail(&roothub_entry->list, list);

 return 0;
}
