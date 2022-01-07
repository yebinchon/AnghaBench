
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wlandevice {scalar_t__ msdstate; int netdev; struct hfa384x* priv; } ;
struct TYPE_8__ {int data; void* status; } ;
struct TYPE_7__ {int * data; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {int data; } ;
struct p80211msg_p2req_ramdl_write {TYPE_4__ resultcode; TYPE_3__ data; TYPE_2__ len; TYPE_1__ addr; } ;
struct hfa384x {int dummy; } ;


 void* P80211ENUM_msgitem_status_data_ok ;
 int P80211ENUM_resultcode_implementation_failure ;
 void* P80211ENUM_resultcode_invalid_parameters ;
 int P80211ENUM_resultcode_refused ;
 int P80211ENUM_resultcode_success ;
 scalar_t__ WLAN_MSD_FWLOAD ;
 scalar_t__ hfa384x_drvr_ramdl_write (struct hfa384x*,int,int *,int) ;
 int netdev_err (int ,char*) ;

int prism2mgmt_ramdl_write(struct wlandevice *wlandev, void *msgp)
{
 struct hfa384x *hw = wlandev->priv;
 struct p80211msg_p2req_ramdl_write *msg = msgp;
 u32 addr;
 u32 len;
 u8 *buf;

 if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
  netdev_err(wlandev->netdev,
      "ramdl_write(): may only be called in the fwload state.\n");
  msg->resultcode.data =
      P80211ENUM_resultcode_implementation_failure;
  msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
  return 0;
 }

 msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;

 if (msg->len.data > sizeof(msg->data.data)) {
  msg->resultcode.status =
      P80211ENUM_resultcode_invalid_parameters;
  return 0;
 }

 addr = msg->addr.data;
 len = msg->len.data;
 buf = msg->data.data;
 if (hfa384x_drvr_ramdl_write(hw, addr, buf, len))
  msg->resultcode.data = P80211ENUM_resultcode_refused;

 msg->resultcode.data = P80211ENUM_resultcode_success;

 return 0;
}
