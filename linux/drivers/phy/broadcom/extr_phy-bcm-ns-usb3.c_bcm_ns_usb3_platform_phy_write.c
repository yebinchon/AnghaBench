
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcm_ns_usb3 {scalar_t__ ccb_mii; int dev; } ;


 scalar_t__ BCMA_CCB_MII_MNG_CMD_DATA ;
 int bcm_ns_usb3_mii_mng_wait_idle (struct bcm_ns_usb3*) ;
 int dev_err (int ,char*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int bcm_ns_usb3_platform_phy_write(struct bcm_ns_usb3 *usb3, u16 reg,
       u16 value)
{
 u32 tmp = 0;
 int err;

 err = bcm_ns_usb3_mii_mng_wait_idle(usb3);
 if (err < 0) {
  dev_err(usb3->dev, "Couldn't write 0x%08x value\n", value);
  return err;
 }


 tmp |= 0x58020000;
 tmp |= reg << 18;
 tmp |= value;
 writel(tmp, usb3->ccb_mii + BCMA_CCB_MII_MNG_CMD_DATA);

 return bcm_ns_usb3_mii_mng_wait_idle(usb3);
}
