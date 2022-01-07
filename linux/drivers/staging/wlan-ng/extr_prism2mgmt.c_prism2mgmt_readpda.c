
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlandevice {scalar_t__ msdstate; int netdev; struct hfa384x* priv; } ;
struct TYPE_4__ {void* status; void* data; } ;
struct TYPE_3__ {void* status; int data; } ;
struct p80211msg_p2req_readpda {TYPE_2__ resultcode; TYPE_1__ pda; } ;
struct hfa384x {int dummy; } ;


 int HFA384x_PDA_LEN_MAX ;
 void* P80211ENUM_msgitem_status_data_ok ;
 void* P80211ENUM_resultcode_implementation_failure ;
 void* P80211ENUM_resultcode_success ;
 scalar_t__ WLAN_MSD_FWLOAD ;
 int hfa384x_drvr_readpda (struct hfa384x*,int ,int ) ;
 int netdev_err (int ,char*,...) ;

int prism2mgmt_readpda(struct wlandevice *wlandev, void *msgp)
{
 struct hfa384x *hw = wlandev->priv;
 struct p80211msg_p2req_readpda *msg = msgp;
 int result;




 if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
  netdev_err(wlandev->netdev,
      "PDA may only be read in the fwload state.\n");
  msg->resultcode.data =
      P80211ENUM_resultcode_implementation_failure;
  msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
 } else {



  result = hfa384x_drvr_readpda(hw,
           msg->pda.data,
           HFA384x_PDA_LEN_MAX);
  if (result) {
   netdev_err(wlandev->netdev,
       "hfa384x_drvr_readpda() failed, result=%d\n",
       result);

   msg->resultcode.data =
       P80211ENUM_resultcode_implementation_failure;
   msg->resultcode.status =
       P80211ENUM_msgitem_status_data_ok;
   return 0;
  }
  msg->pda.status = P80211ENUM_msgitem_status_data_ok;
  msg->resultcode.data = P80211ENUM_resultcode_success;
  msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
 }

 return 0;
}
