
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bcm_ns_usb3 {int (* phy_write ) (struct bcm_ns_usb3*,int ,int ) ;} ;


 int stub1 (struct bcm_ns_usb3*,int ,int ) ;

__attribute__((used)) static int bcm_ns_usb3_mdio_phy_write(struct bcm_ns_usb3 *usb3, u16 reg,
          u16 value)
{
 return usb3->phy_write(usb3, reg, value);
}
