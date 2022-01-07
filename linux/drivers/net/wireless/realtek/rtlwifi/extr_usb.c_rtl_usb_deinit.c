
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl_usb_cleanup (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl_usb_deinit(struct ieee80211_hw *hw)
{
 rtl_usb_cleanup(hw);
}
