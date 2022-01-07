
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct bcm_ns_usb3 {int family; scalar_t__ dmp; } ;


 scalar_t__ BCMA_RESET_CTL ;
 int BCMA_RESET_CTL_RESET ;


 int ENOTSUPP ;
 int WARN_ON (int) ;
 int bcm_ns_usb3_phy_init_ns_ax (struct bcm_ns_usb3*) ;
 int bcm_ns_usb3_phy_init_ns_bx (struct bcm_ns_usb3*) ;
 struct bcm_ns_usb3* phy_get_drvdata (struct phy*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int bcm_ns_usb3_phy_init(struct phy *phy)
{
 struct bcm_ns_usb3 *usb3 = phy_get_drvdata(phy);
 int err;


 writel(BCMA_RESET_CTL_RESET, usb3->dmp + BCMA_RESET_CTL);

 switch (usb3->family) {
 case 129:
  err = bcm_ns_usb3_phy_init_ns_ax(usb3);
  break;
 case 128:
  err = bcm_ns_usb3_phy_init_ns_bx(usb3);
  break;
 default:
  WARN_ON(1);
  err = -ENOTSUPP;
 }

 return err;
}
