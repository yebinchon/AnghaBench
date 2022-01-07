
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int flags; } ;


 int ULPI_OTG_CTRL ;
 unsigned int ULPI_OTG_CTRL_DM_PULLDOWN ;
 unsigned int ULPI_OTG_CTRL_DP_PULLDOWN ;
 unsigned int ULPI_OTG_CTRL_EXTVBUSIND ;
 unsigned int ULPI_OTG_CTRL_ID_PULLUP ;
 int ULPI_OTG_DM_PULLDOWN_DIS ;
 int ULPI_OTG_DP_PULLDOWN_DIS ;
 int ULPI_OTG_EXTVBUSIND ;
 int ULPI_OTG_ID_PULLUP ;
 int usb_phy_io_write (struct usb_phy*,unsigned int,int ) ;

__attribute__((used)) static int ulpi_set_otg_flags(struct usb_phy *phy)
{
 unsigned int flags = ULPI_OTG_CTRL_DP_PULLDOWN |
        ULPI_OTG_CTRL_DM_PULLDOWN;

 if (phy->flags & ULPI_OTG_ID_PULLUP)
  flags |= ULPI_OTG_CTRL_ID_PULLUP;





 if (phy->flags & ULPI_OTG_DP_PULLDOWN_DIS)
  flags &= ~ULPI_OTG_CTRL_DP_PULLDOWN;

 if (phy->flags & ULPI_OTG_DM_PULLDOWN_DIS)
  flags &= ~ULPI_OTG_CTRL_DM_PULLDOWN;

 if (phy->flags & ULPI_OTG_EXTVBUSIND)
  flags |= ULPI_OTG_CTRL_EXTVBUSIND;

 return usb_phy_io_write(phy, flags, ULPI_OTG_CTRL);
}
