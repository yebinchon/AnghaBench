
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_io_ops {int dummy; } ;
struct usb_phy {char* label; unsigned int flags; int init; struct usb_otg* otg; struct usb_phy_io_ops* io_ops; } ;
struct usb_otg {int set_vbus; int set_host; struct usb_phy* usb_phy; } ;


 int GFP_KERNEL ;
 int kfree (struct usb_phy*) ;
 void* kzalloc (int,int ) ;
 int ulpi_init ;
 int ulpi_set_host ;
 int ulpi_set_vbus ;

struct usb_phy *
otg_ulpi_create(struct usb_phy_io_ops *ops,
  unsigned int flags)
{
 struct usb_phy *phy;
 struct usb_otg *otg;

 phy = kzalloc(sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return ((void*)0);

 otg = kzalloc(sizeof(*otg), GFP_KERNEL);
 if (!otg) {
  kfree(phy);
  return ((void*)0);
 }

 phy->label = "ULPI";
 phy->flags = flags;
 phy->io_ops = ops;
 phy->otg = otg;
 phy->init = ulpi_init;

 otg->usb_phy = phy;
 otg->set_host = ulpi_set_host;
 otg->set_vbus = ulpi_set_vbus;

 return phy;
}
