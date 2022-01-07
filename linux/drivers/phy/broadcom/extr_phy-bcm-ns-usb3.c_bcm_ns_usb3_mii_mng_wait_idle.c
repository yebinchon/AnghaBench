
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_ns_usb3 {scalar_t__ ccb_mii; } ;


 scalar_t__ BCMA_CCB_MII_MNG_CTL ;
 int BCM_NS_USB3_MII_MNG_TIMEOUT_US ;
 int bcm_ns_usb3_wait_reg (struct bcm_ns_usb3*,scalar_t__,int,int,int ) ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static inline int bcm_ns_usb3_mii_mng_wait_idle(struct bcm_ns_usb3 *usb3)
{
 return bcm_ns_usb3_wait_reg(usb3, usb3->ccb_mii + BCMA_CCB_MII_MNG_CTL,
        0x0100, 0x0000,
        usecs_to_jiffies(BCM_NS_USB3_MII_MNG_TIMEOUT_US));
}
