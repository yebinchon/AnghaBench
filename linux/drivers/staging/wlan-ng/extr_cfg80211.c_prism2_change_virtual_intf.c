
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wlandevice {int macmode; } ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct net_device {TYPE_1__* ieee80211_ptr; struct wlandevice* ml_priv; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int iftype; } ;


 int DIDMIB_P2_STATIC_CNFPORTTYPE ;
 int EFAULT ;
 int EOPNOTSUPP ;


 int WLAN_MACMODE_ESS_STA ;
 int WLAN_MACMODE_IBSS_STA ;
 int netdev_warn (struct net_device*,char*,int) ;
 int prism2_domibset_uint32 (struct wlandevice*,int ,int) ;

__attribute__((used)) static int prism2_change_virtual_intf(struct wiphy *wiphy,
          struct net_device *dev,
          enum nl80211_iftype type,
          struct vif_params *params)
{
 struct wlandevice *wlandev = dev->ml_priv;
 u32 data;
 int result;
 int err = 0;

 switch (type) {
 case 129:
  if (wlandev->macmode == WLAN_MACMODE_IBSS_STA)
   goto exit;
  wlandev->macmode = WLAN_MACMODE_IBSS_STA;
  data = 0;
  break;
 case 128:
  if (wlandev->macmode == WLAN_MACMODE_ESS_STA)
   goto exit;
  wlandev->macmode = WLAN_MACMODE_ESS_STA;
  data = 1;
  break;
 default:
  netdev_warn(dev, "Operation mode: %d not support\n", type);
  return -EOPNOTSUPP;
 }


 result = prism2_domibset_uint32(wlandev,
     DIDMIB_P2_STATIC_CNFPORTTYPE,
     data);

 if (result)
  err = -EFAULT;

 dev->ieee80211_ptr->iftype = type;

exit:
 return err;
}
