
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlandevice {int dummy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wlandevice* ml_priv; } ;


 int DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID ;
 int prism2_domibset_uint32 (struct wlandevice*,int ,int ) ;

__attribute__((used)) static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
      u8 key_index, bool unicast, bool multicast)
{
 struct wlandevice *wlandev = dev->ml_priv;

 return prism2_domibset_uint32(wlandev,
           DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
           key_index);
}
