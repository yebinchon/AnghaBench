
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;
struct device {int dummy; } ;
typedef enum usb_phy_type { ____Placeholder_usb_phy_type } usb_phy_type ;


 int ENOMEM ;
 struct usb_phy* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct usb_phy*) ;
 int devm_usb_phy_release ;
 int devres_add (struct device*,struct usb_phy**) ;
 struct usb_phy** devres_alloc (int ,int,int ) ;
 int devres_free (struct usb_phy**) ;
 struct usb_phy* usb_get_phy (int) ;

struct usb_phy *devm_usb_get_phy(struct device *dev, enum usb_phy_type type)
{
 struct usb_phy **ptr, *phy;

 ptr = devres_alloc(devm_usb_phy_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 phy = usb_get_phy(type);
 if (!IS_ERR(phy)) {
  *ptr = phy;
  devres_add(dev, ptr);
 } else
  devres_free(ptr);

 return phy;
}
