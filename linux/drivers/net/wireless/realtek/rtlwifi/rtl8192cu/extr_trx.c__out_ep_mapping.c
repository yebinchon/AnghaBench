
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_usb_priv {int dummy; } ;
struct rtl_ep_map {int dummy; } ;
struct rtl_usb {int out_ep_nums; struct rtl_ep_map ep_map; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 int EINVAL ;
 int IS_NORMAL_CHIP (int ) ;
 int oneoutepmapping (struct ieee80211_hw*,struct rtl_ep_map*) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (struct rtl_usb_priv*) ;
 struct rtl_usb_priv* rtl_usbpriv (struct ieee80211_hw*) ;
 int threeoutepmapping (struct ieee80211_hw*,int,struct rtl_ep_map*) ;
 int twooutepmapping (struct ieee80211_hw*,int,int,struct rtl_ep_map*) ;

__attribute__((used)) static int _out_ep_mapping(struct ieee80211_hw *hw)
{
 int err = 0;
 bool ischipn, bwificfg = 0;
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_usb_priv *usb_priv = rtl_usbpriv(hw);
 struct rtl_usb *rtlusb = rtl_usbdev(usb_priv);
 struct rtl_ep_map *ep_map = &(rtlusb->ep_map);

 ischipn = IS_NORMAL_CHIP(rtlhal->version);
 switch (rtlusb->out_ep_nums) {
 case 2:
  twooutepmapping(hw, ischipn, bwificfg, ep_map);
  break;
 case 3:

  if (!ischipn) {
   err = -EINVAL;
   goto err_out;
  }
  threeoutepmapping(hw, ischipn, ep_map);
  break;
 case 1:
  oneoutepmapping(hw, ep_map);
  break;
 default:
  err = -EINVAL;
  break;
 }
err_out:
 return err;

}
