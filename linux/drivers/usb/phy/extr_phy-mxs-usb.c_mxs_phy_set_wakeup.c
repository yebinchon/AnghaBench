
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_phy {scalar_t__ io_priv; } ;
struct mxs_phy {int dummy; } ;


 int BM_USBPHY_CTRL_ENDPDMCHG_WKUP ;
 int BM_USBPHY_CTRL_ENIDCHG_WKUP ;
 int BM_USBPHY_CTRL_ENVBUSCHG_WKUP ;
 scalar_t__ HW_USBPHY_CTRL_CLR ;
 scalar_t__ HW_USBPHY_CTRL_SET ;
 int mxs_phy_disconnect_line (struct mxs_phy*,int) ;
 struct mxs_phy* to_mxs_phy (struct usb_phy*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int mxs_phy_set_wakeup(struct usb_phy *x, bool enabled)
{
 struct mxs_phy *mxs_phy = to_mxs_phy(x);
 u32 value = BM_USBPHY_CTRL_ENVBUSCHG_WKUP |
   BM_USBPHY_CTRL_ENDPDMCHG_WKUP |
    BM_USBPHY_CTRL_ENIDCHG_WKUP;
 if (enabled) {
  mxs_phy_disconnect_line(mxs_phy, 1);
  writel_relaxed(value, x->io_priv + HW_USBPHY_CTRL_SET);
 } else {
  writel_relaxed(value, x->io_priv + HW_USBPHY_CTRL_CLR);
  mxs_phy_disconnect_line(mxs_phy, 0);
 }

 return 0;
}
