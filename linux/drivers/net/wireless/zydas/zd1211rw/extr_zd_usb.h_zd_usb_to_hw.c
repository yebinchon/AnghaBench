
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int intf; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_hw* zd_intf_to_hw (int ) ;

__attribute__((used)) static inline struct ieee80211_hw *zd_usb_to_hw(struct zd_usb *usb)
{
 return zd_intf_to_hw(usb->intf);
}
