
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_usb {int dummy; } ;


 int PHY_PWR_CTRL ;
 int PHY_PWR_PHYPWD ;
 int WARN_ON (int) ;
 int twl4030_usb_read (struct twl4030_usb*,int ) ;
 scalar_t__ twl4030_usb_write_verify (struct twl4030_usb*,int ,int ) ;

__attribute__((used)) static void __twl4030_phy_power(struct twl4030_usb *twl, int on)
{
 u8 pwr = twl4030_usb_read(twl, PHY_PWR_CTRL);

 if (on)
  pwr &= ~PHY_PWR_PHYPWD;
 else
  pwr |= PHY_PWR_PHYPWD;

 WARN_ON(twl4030_usb_write_verify(twl, PHY_PWR_CTRL, pwr) < 0);
}
