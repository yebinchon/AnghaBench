
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;


 int ulpi_set_fc_flags (struct usb_phy*) ;
 int ulpi_set_ic_flags (struct usb_phy*) ;
 int ulpi_set_otg_flags (struct usb_phy*) ;

__attribute__((used)) static int ulpi_set_flags(struct usb_phy *phy)
{
 int ret;

 ret = ulpi_set_otg_flags(phy);
 if (ret)
  return ret;

 ret = ulpi_set_ic_flags(phy);
 if (ret)
  return ret;

 return ulpi_set_fc_flags(phy);
}
