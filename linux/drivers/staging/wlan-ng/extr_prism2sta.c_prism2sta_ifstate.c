
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wlandevice {int msdstate; int macmode; int netdev; int hwremoved; struct hfa384x* priv; } ;
struct hfa384x {int join_retries; int join_ap; } ;





 int P80211ENUM_resultcode_implementation_failure ;
 int P80211ENUM_resultcode_invalid_parameters ;
 int P80211ENUM_resultcode_success ;
 int WLAN_MACMODE_NONE ;

 int WLAN_MSD_FWLOAD_PENDING ;


 int WLAN_MSD_HWPRESENT_PENDING ;

 int WLAN_MSD_RUNNING_PENDING ;
 int hfa384x_cmd_initialize (struct hfa384x*) ;
 int hfa384x_drvr_start (struct hfa384x*) ;
 int hfa384x_drvr_stop (struct hfa384x*) ;
 int netdev_err (int ,char*,int) ;
 int netdev_warn (int ,char*) ;
 int netif_carrier_off (int ) ;
 int pr_debug (char*,int,int) ;
 int prism2sta_getcardinfo (struct wlandevice*) ;
 int prism2sta_globalsetup (struct wlandevice*) ;

u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
{
 struct hfa384x *hw = wlandev->priv;
 u32 result;

 result = P80211ENUM_resultcode_implementation_failure;

 pr_debug("Current MSD state(%d), requesting(%d)\n",
   wlandev->msdstate, ifstate);
 switch (ifstate) {
 case 132:
  switch (wlandev->msdstate) {
  case 129:
   wlandev->msdstate = WLAN_MSD_FWLOAD_PENDING;




   result = hfa384x_drvr_start(hw);
   if (result) {
    netdev_err(wlandev->netdev,
        "hfa384x_drvr_start() failed,result=%d\n",
        (int)result);
    result =
     P80211ENUM_resultcode_implementation_failure;
    wlandev->msdstate = 129;
    break;
   }
   wlandev->msdstate = 131;
   result = P80211ENUM_resultcode_success;
   break;
  case 131:
   hfa384x_cmd_initialize(hw);
   result = P80211ENUM_resultcode_success;
   break;
  case 128:
   netdev_warn(wlandev->netdev,
        "Cannot enter fwload state from enable state, you must disable first.\n");
   result = P80211ENUM_resultcode_invalid_parameters;
   break;
  case 130:
  default:



   result = P80211ENUM_resultcode_implementation_failure;
   break;
  }
  break;
 case 133:
  switch (wlandev->msdstate) {
  case 129:
  case 131:
   wlandev->msdstate = WLAN_MSD_RUNNING_PENDING;
   result = hfa384x_drvr_start(hw);
   if (result) {
    netdev_err(wlandev->netdev,
        "hfa384x_drvr_start() failed,result=%d\n",
        (int)result);
    result =
      P80211ENUM_resultcode_implementation_failure;
    wlandev->msdstate = 129;
    break;
   }

   result = prism2sta_getcardinfo(wlandev);
   if (result) {
    netdev_err(wlandev->netdev,
        "prism2sta_getcardinfo() failed,result=%d\n",
        (int)result);
    result =
      P80211ENUM_resultcode_implementation_failure;
    hfa384x_drvr_stop(hw);
    wlandev->msdstate = 129;
    break;
   }
   result = prism2sta_globalsetup(wlandev);
   if (result) {
    netdev_err(wlandev->netdev,
        "prism2sta_globalsetup() failed,result=%d\n",
        (int)result);
    result =
      P80211ENUM_resultcode_implementation_failure;
    hfa384x_drvr_stop(hw);
    wlandev->msdstate = 129;
    break;
   }
   wlandev->msdstate = 128;
   hw->join_ap = 0;
   hw->join_retries = 60;
   result = P80211ENUM_resultcode_success;
   break;
  case 128:

   result = P80211ENUM_resultcode_success;
   break;
  case 130:
  default:



   result = P80211ENUM_resultcode_implementation_failure;
   break;
  }
  break;
 case 134:
  switch (wlandev->msdstate) {
  case 129:

   result = P80211ENUM_resultcode_success;
   break;
  case 131:
  case 128:
   wlandev->msdstate = WLAN_MSD_HWPRESENT_PENDING;






   if (!wlandev->hwremoved)
    netif_carrier_off(wlandev->netdev);

   hfa384x_drvr_stop(hw);

   wlandev->macmode = WLAN_MACMODE_NONE;
   wlandev->msdstate = 129;
   result = P80211ENUM_resultcode_success;
   break;
  case 130:
  default:



   result = P80211ENUM_resultcode_implementation_failure;
   break;
  }
  break;
 default:
  result = P80211ENUM_resultcode_invalid_parameters;
  break;
 }

 return result;
}
