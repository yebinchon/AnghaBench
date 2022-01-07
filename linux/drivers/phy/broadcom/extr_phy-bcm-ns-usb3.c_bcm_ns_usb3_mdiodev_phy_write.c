
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mdio_device {int addr; int bus; } ;
struct bcm_ns_usb3 {struct mdio_device* mdiodev; } ;


 int mdiobus_write (int ,int ,int ,int ) ;

__attribute__((used)) static int bcm_ns_usb3_mdiodev_phy_write(struct bcm_ns_usb3 *usb3, u16 reg,
      u16 value)
{
 struct mdio_device *mdiodev = usb3->mdiodev;

 return mdiobus_write(mdiodev->bus, mdiodev->addr, reg, value);
}
