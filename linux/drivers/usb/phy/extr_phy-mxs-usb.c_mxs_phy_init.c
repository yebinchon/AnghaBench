
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;
struct mxs_phy {int clk; } ;


 int clk_prepare_enable (int ) ;
 int mxs_phy_clock_switch_delay () ;
 int mxs_phy_hw_init (struct mxs_phy*) ;
 struct mxs_phy* to_mxs_phy (struct usb_phy*) ;

__attribute__((used)) static int mxs_phy_init(struct usb_phy *phy)
{
 int ret;
 struct mxs_phy *mxs_phy = to_mxs_phy(phy);

 mxs_phy_clock_switch_delay();
 ret = clk_prepare_enable(mxs_phy->clk);
 if (ret)
  return ret;

 return mxs_phy_hw_init(mxs_phy);
}
