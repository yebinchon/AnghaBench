
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u16 ;
struct wlandevice {TYPE_9__* netdev; struct hfa384x* priv; } ;
struct TYPE_12__ {void* data; int status; } ;
struct TYPE_18__ {int const data; int status; } ;
struct TYPE_17__ {int const data; int status; } ;
struct TYPE_16__ {int data; int status; } ;
struct TYPE_15__ {int const data; int status; } ;
struct TYPE_14__ {int const data; int status; } ;
struct TYPE_13__ {int data; } ;
struct TYPE_11__ {int data; } ;
struct p80211msg_lnxreq_wlansniff {TYPE_2__ resultcode; TYPE_8__ wlanheader; TYPE_7__ prismheader; TYPE_6__ packet_trunc; TYPE_5__ stripfcs; TYPE_4__ keepwepflags; TYPE_3__ channel; TYPE_1__ enable; } ;
struct hfa384x {int presniff_wepflags; int presniff_port_type; int sniff_channel; int sniff_fcs; int sniffhdr; int sniff_truncate; int * port_enabled; } ;
struct TYPE_19__ {void* type; } ;


 void* ARPHRD_ETHER ;
 void* ARPHRD_IEEE80211 ;
 void* ARPHRD_IEEE80211_PRISM ;
 int HFA384x_MONITOR_DISABLE ;
 int HFA384x_MONITOR_ENABLE ;
 int HFA384x_PORTTYPE_PSUEDOIBSS ;
 int HFA384x_RID_CNFOWNCHANNEL ;
 int HFA384x_RID_CNFPORTTYPE ;
 int HFA384x_RID_CNFWEPFLAGS ;
 int HFA384x_WEPFLAGS_DISABLE_RXCRYPT ;
 int HFA384x_WEPFLAGS_DISABLE_TXCRYPT ;
 int P80211ENUM_msgitem_status_data_ok ;
 void* P80211ENUM_resultcode_invalid_parameters ;
 void* P80211ENUM_resultcode_refused ;
 void* P80211ENUM_resultcode_success ;


 int hfa384x_cmd_monitor (struct hfa384x*,int ) ;
 int hfa384x_drvr_disable (struct hfa384x*,int ) ;
 int hfa384x_drvr_enable (struct hfa384x*,int ) ;
 int hfa384x_drvr_getconfig16 (struct hfa384x*,int ,int*) ;
 int hfa384x_drvr_setconfig16 (struct hfa384x*,int ,int) ;
 int hfa384x_drvr_start (struct hfa384x*) ;
 int hfa384x_drvr_stop (struct hfa384x*) ;
 int netdev_dbg (TYPE_9__*,char*,int,...) ;
 int netdev_info (TYPE_9__*,char*) ;

int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
{
 int result = 0;
 struct p80211msg_lnxreq_wlansniff *msg = msgp;

 struct hfa384x *hw = wlandev->priv;
 u16 word;

 msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
 switch (msg->enable.data) {
 case 129:

  if (wlandev->netdev->type == ARPHRD_ETHER) {
   msg->resultcode.data =
       P80211ENUM_resultcode_invalid_parameters;
   return 0;
  }

  result = hfa384x_cmd_monitor(hw, HFA384x_MONITOR_DISABLE);
  if (result) {
   netdev_dbg(wlandev->netdev,
       "failed to disable monitor mode, result=%d\n",
       result);
   goto failed;
  }

  result = hfa384x_drvr_disable(hw, 0);
  if (result) {
   netdev_dbg
   (wlandev->netdev,
        "failed to disable port 0 after sniffing, result=%d\n",
        result);
   goto failed;
  }

  wlandev->netdev->type = ARPHRD_ETHER;


  result = hfa384x_drvr_setconfig16(hw,
        HFA384x_RID_CNFWEPFLAGS,
        hw->presniff_wepflags);
  if (result) {
   netdev_dbg
       (wlandev->netdev,
        "failed to restore wepflags=0x%04x, result=%d\n",
        hw->presniff_wepflags, result);
   goto failed;
  }


  if (hw->presniff_port_type != 0) {
   word = hw->presniff_port_type;
   result = hfa384x_drvr_setconfig16(hw,
        HFA384x_RID_CNFPORTTYPE,
        word);
   if (result) {
    netdev_dbg
        (wlandev->netdev,
         "failed to restore porttype, result=%d\n",
         result);
    goto failed;
   }


   result = hfa384x_drvr_enable(hw, 0);
   if (result) {
    netdev_dbg(wlandev->netdev,
        "failed to enable port to presniff setting, result=%d\n",
        result);
    goto failed;
   }
  } else {
   result = hfa384x_drvr_disable(hw, 0);
  }

  netdev_info(wlandev->netdev, "monitor mode disabled\n");
  msg->resultcode.data = P80211ENUM_resultcode_success;
  return 0;
 case 128:

  if (hw->port_enabled[0]) {
   if (wlandev->netdev->type == ARPHRD_ETHER) {

    result = hfa384x_drvr_getconfig16(hw,
        HFA384x_RID_CNFPORTTYPE,
        &hw->presniff_port_type);
    if (result) {
     netdev_dbg
     (wlandev->netdev,
          "failed to read porttype, result=%d\n",
          result);
     goto failed;
    }

    result = hfa384x_drvr_getconfig16(hw,
        HFA384x_RID_CNFWEPFLAGS,
        &hw->presniff_wepflags);
    if (result) {
     netdev_dbg
     (wlandev->netdev,
          "failed to read wepflags, result=%d\n",
          result);
     goto failed;
    }
    hfa384x_drvr_stop(hw);
    result = hfa384x_drvr_start(hw);
    if (result) {
     netdev_dbg(wlandev->netdev,
         "failed to restart the card for sniffing, result=%d\n",
         result);
     goto failed;
    }
   } else {

    result = hfa384x_drvr_disable(hw, 0);
    if (result) {
     netdev_dbg(wlandev->netdev,
         "failed to enable port for sniffing, result=%d\n",
         result);
     goto failed;
    }
   }
  } else {
   hw->presniff_port_type = 0;
  }


  word = msg->channel.data;
  result = hfa384x_drvr_setconfig16(hw,
        HFA384x_RID_CNFOWNCHANNEL,
        word);
  hw->sniff_channel = word;

  if (result) {
   netdev_dbg(wlandev->netdev,
       "failed to set channel %d, result=%d\n",
       word, result);
   goto failed;
  }


  if (wlandev->netdev->type != ARPHRD_ETHER) {

   word = HFA384x_PORTTYPE_PSUEDOIBSS;
   result = hfa384x_drvr_setconfig16(hw,
        HFA384x_RID_CNFPORTTYPE,
        word);
   if (result) {
    netdev_dbg
        (wlandev->netdev,
         "failed to set porttype %d, result=%d\n",
         word, result);
    goto failed;
   }
   if ((msg->keepwepflags.status ==
        P80211ENUM_msgitem_status_data_ok) &&
       (msg->keepwepflags.data != 128)) {

    word = HFA384x_WEPFLAGS_DISABLE_TXCRYPT |
        HFA384x_WEPFLAGS_DISABLE_RXCRYPT;
    result =
        hfa384x_drvr_setconfig16(hw,
           HFA384x_RID_CNFWEPFLAGS,
           word);
   }

   if (result) {
    netdev_dbg
      (wlandev->netdev,
       "failed to set wepflags=0x%04x, result=%d\n",
       word, result);
    goto failed;
   }
  }


  if ((msg->stripfcs.status ==
       P80211ENUM_msgitem_status_data_ok) &&
      (msg->stripfcs.data == 128)) {
   hw->sniff_fcs = 0;
  } else {
   hw->sniff_fcs = 1;
  }


  if (msg->packet_trunc.status ==
      P80211ENUM_msgitem_status_data_ok) {
   hw->sniff_truncate = msg->packet_trunc.data;
  } else {
   hw->sniff_truncate = 0;
  }


  result = hfa384x_drvr_enable(hw, 0);
  if (result) {
   netdev_dbg
       (wlandev->netdev,
        "failed to enable port for sniffing, result=%d\n",
        result);
   goto failed;
  }

  result = hfa384x_cmd_monitor(hw, HFA384x_MONITOR_ENABLE);
  if (result) {
   netdev_dbg(wlandev->netdev,
       "failed to enable monitor mode, result=%d\n",
       result);
   goto failed;
  }

  if (wlandev->netdev->type == ARPHRD_ETHER)
   netdev_info(wlandev->netdev, "monitor mode enabled\n");



  if ((msg->prismheader.status ==
       P80211ENUM_msgitem_status_data_ok) &&
      (msg->prismheader.data == 128)) {
   hw->sniffhdr = 0;
   wlandev->netdev->type = ARPHRD_IEEE80211_PRISM;
  } else if ((msg->wlanheader.status ==
       P80211ENUM_msgitem_status_data_ok) &&
      (msg->wlanheader.data == 128)) {
   hw->sniffhdr = 1;
   wlandev->netdev->type = ARPHRD_IEEE80211_PRISM;
  } else {
   wlandev->netdev->type = ARPHRD_IEEE80211;
  }

  msg->resultcode.data = P80211ENUM_resultcode_success;
  return 0;
 default:
  msg->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
  return 0;
 }

failed:
 msg->resultcode.data = P80211ENUM_resultcode_refused;
 return 0;
}
