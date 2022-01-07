
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_phy {TYPE_2__* dev; } ;
typedef enum usb_phy_type { ____Placeholder_usb_phy_type } usb_phy_type ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int owner; } ;


 int ENODEV ;
 struct usb_phy* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct usb_phy*) ;
 struct usb_phy* __usb_find_phy (int *,int) ;
 int get_device (TYPE_2__*) ;
 int phy_list ;
 int phy_lock ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_module_get (int ) ;
 int usb_phy_type_string (int) ;

struct usb_phy *usb_get_phy(enum usb_phy_type type)
{
 struct usb_phy *phy = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&phy_lock, flags);

 phy = __usb_find_phy(&phy_list, type);
 if (IS_ERR(phy) || !try_module_get(phy->dev->driver->owner)) {
  pr_debug("PHY: unable to find transceiver of type %s\n",
   usb_phy_type_string(type));
  if (!IS_ERR(phy))
   phy = ERR_PTR(-ENODEV);

  goto err0;
 }

 get_device(phy->dev);

err0:
 spin_unlock_irqrestore(&phy_lock, flags);

 return phy;
}
