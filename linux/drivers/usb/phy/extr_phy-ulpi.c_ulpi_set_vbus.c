
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int flags; } ;
struct usb_otg {struct usb_phy* usb_phy; } ;


 int ULPI_OTG_CTRL ;
 unsigned int ULPI_OTG_CTRL_DRVVBUS ;
 unsigned int ULPI_OTG_CTRL_DRVVBUS_EXT ;
 int ULPI_OTG_DRVVBUS ;
 int ULPI_OTG_DRVVBUS_EXT ;
 unsigned int usb_phy_io_read (struct usb_phy*,int ) ;
 int usb_phy_io_write (struct usb_phy*,unsigned int,int ) ;

__attribute__((used)) static int ulpi_set_vbus(struct usb_otg *otg, bool on)
{
 struct usb_phy *phy = otg->usb_phy;
 unsigned int flags = usb_phy_io_read(phy, ULPI_OTG_CTRL);

 flags &= ~(ULPI_OTG_CTRL_DRVVBUS | ULPI_OTG_CTRL_DRVVBUS_EXT);

 if (on) {
  if (phy->flags & ULPI_OTG_DRVVBUS)
   flags |= ULPI_OTG_CTRL_DRVVBUS;

  if (phy->flags & ULPI_OTG_DRVVBUS_EXT)
   flags |= ULPI_OTG_CTRL_DRVVBUS_EXT;
 }

 return usb_phy_io_write(phy, flags, ULPI_OTG_CTRL);
}
