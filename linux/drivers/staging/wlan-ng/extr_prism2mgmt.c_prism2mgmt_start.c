
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_22__ ;
typedef struct TYPE_35__ TYPE_21__ ;
typedef struct TYPE_34__ TYPE_20__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_19__ ;
typedef struct TYPE_31__ TYPE_18__ ;
typedef struct TYPE_30__ TYPE_17__ ;
typedef struct TYPE_29__ TYPE_16__ ;
typedef struct TYPE_28__ TYPE_15__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int u8 ;
typedef int u16 ;
struct wlandevice {int netdev; int macmode; int ssid; struct hfa384x* priv; } ;
struct p80211pstrd {int dummy; } ;
struct TYPE_37__ {int data; scalar_t__ status; } ;
struct TYPE_36__ {scalar_t__ data; } ;
struct TYPE_35__ {scalar_t__ status; int data; } ;
struct TYPE_34__ {scalar_t__ status; int data; } ;
struct TYPE_32__ {scalar_t__ status; int data; } ;
struct TYPE_31__ {scalar_t__ status; int data; } ;
struct TYPE_30__ {scalar_t__ status; int data; } ;
struct TYPE_29__ {scalar_t__ status; int data; } ;
struct TYPE_28__ {scalar_t__ status; int data; } ;
struct TYPE_27__ {int data; } ;
struct TYPE_26__ {scalar_t__ status; int data; } ;
struct TYPE_25__ {scalar_t__ status; int data; } ;
struct TYPE_24__ {scalar_t__ status; int data; } ;
struct TYPE_23__ {scalar_t__ status; int data; } ;
struct TYPE_44__ {scalar_t__ status; int data; } ;
struct TYPE_43__ {scalar_t__ status; int data; } ;
struct TYPE_42__ {scalar_t__ status; int data; } ;
struct TYPE_41__ {int data; } ;
struct TYPE_40__ {int data; } ;
struct TYPE_39__ {int data; } ;
struct TYPE_38__ {int data; } ;
struct p80211msg_dot11req_start {TYPE_2__ resultcode; TYPE_22__ bsstype; TYPE_21__ operationalrate8; TYPE_20__ operationalrate7; TYPE_19__ operationalrate6; TYPE_18__ operationalrate5; TYPE_17__ operationalrate4; TYPE_16__ operationalrate3; TYPE_15__ operationalrate2; TYPE_14__ operationalrate1; TYPE_13__ basicrate8; TYPE_12__ basicrate7; TYPE_11__ basicrate6; TYPE_10__ basicrate5; TYPE_9__ basicrate4; TYPE_8__ basicrate3; TYPE_7__ basicrate2; TYPE_6__ basicrate1; TYPE_5__ dschannel; TYPE_4__ beaconperiod; TYPE_3__ ssid; } ;
struct hfa384x_bytestr {int dummy; } ;
struct TYPE_33__ {int minor; int variant; int major; } ;
struct hfa384x {TYPE_1__ ident_sta_fw; } ;


 scalar_t__ HFA384x_FIRMWARE_VERSION (int ,int,int) ;
 int HFA384x_RID_CNFAPBCNINT ;
 int HFA384x_RID_CNFBASICRATES ;
 int HFA384x_RID_CNFDESIREDSSID ;
 int HFA384x_RID_CNFDESIREDSSID_LEN ;
 int HFA384x_RID_CNFMAXDATALEN ;
 int HFA384x_RID_CNFOWNCHANNEL ;
 int HFA384x_RID_CNFOWNSSID ;
 int HFA384x_RID_CNFOWNSSID_LEN ;
 int HFA384x_RID_CNFPORTTYPE ;
 int HFA384x_RID_CNFSUPPRATES ;
 int HFA384x_RID_TXRATECNTL ;
 scalar_t__ P80211ENUM_bsstype_independent ;
 scalar_t__ P80211ENUM_msgitem_status_data_ok ;
 int P80211ENUM_resultcode_invalid_parameters ;
 int P80211ENUM_resultcode_not_supported ;
 int P80211ENUM_resultcode_success ;
 int WLAN_MACMODE_IBSS_STA ;
 int WLAN_MACMODE_NONE ;
 int hfa384x_drvr_enable (struct hfa384x*,int ) ;
 int hfa384x_drvr_setconfig (struct hfa384x*,int ,int *,int ) ;
 int hfa384x_drvr_setconfig16 (struct hfa384x*,int ,int) ;
 int memcpy (int *,int *,int) ;
 int netdev_dbg (int ,char*,int) ;
 int netdev_err (int ,char*,...) ;
 int p80211rate_to_p2bit (int ) ;
 int prism2mgmt_pstr2bytestr (struct hfa384x_bytestr*,struct p80211pstrd*) ;

int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
{
 int result = 0;
 struct hfa384x *hw = wlandev->priv;
 struct p80211msg_dot11req_start *msg = msgp;

 struct p80211pstrd *pstr;
 u8 bytebuf[80];
 struct hfa384x_bytestr *p2bytestr = (struct hfa384x_bytestr *)bytebuf;
 u16 word;

 wlandev->macmode = WLAN_MACMODE_NONE;


 memcpy(&wlandev->ssid, &msg->ssid.data, sizeof(msg->ssid.data));



 if (HFA384x_FIRMWARE_VERSION(hw->ident_sta_fw.major,
         hw->ident_sta_fw.minor,
         hw->ident_sta_fw.variant) <
     HFA384x_FIRMWARE_VERSION(0, 8, 3)) {

  msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
  msg->resultcode.data = P80211ENUM_resultcode_not_supported;
  goto done;
 }

 msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;




 pstr = (struct p80211pstrd *)&msg->ssid.data;
 prism2mgmt_pstr2bytestr(p2bytestr, pstr);
 result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFOWNSSID,
     bytebuf, HFA384x_RID_CNFOWNSSID_LEN);
 if (result) {
  netdev_err(wlandev->netdev, "Failed to set CnfOwnSSID\n");
  goto failed;
 }
 result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFDESIREDSSID,
     bytebuf,
     HFA384x_RID_CNFDESIREDSSID_LEN);
 if (result) {
  netdev_err(wlandev->netdev, "Failed to set CnfDesiredSSID\n");
  goto failed;
 }



 hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFPORTTYPE, 0);


 word = msg->beaconperiod.data;
 result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFAPBCNINT, word);
 if (result) {
  netdev_err(wlandev->netdev,
      "Failed to set beacon period=%d.\n", word);
  goto failed;
 }


 word = msg->dschannel.data;
 result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFOWNCHANNEL, word);
 if (result) {
  netdev_err(wlandev->netdev,
      "Failed to set channel=%d.\n", word);
  goto failed;
 }

 word = p80211rate_to_p2bit(msg->basicrate1.data);
 if (msg->basicrate2.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->basicrate2.data);

 if (msg->basicrate3.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->basicrate3.data);

 if (msg->basicrate4.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->basicrate4.data);

 if (msg->basicrate5.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->basicrate5.data);

 if (msg->basicrate6.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->basicrate6.data);

 if (msg->basicrate7.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->basicrate7.data);

 if (msg->basicrate8.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->basicrate8.data);

 result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFBASICRATES, word);
 if (result) {
  netdev_err(wlandev->netdev,
      "Failed to set basicrates=%d.\n", word);
  goto failed;
 }


 word = p80211rate_to_p2bit(msg->operationalrate1.data);
 if (msg->operationalrate2.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->operationalrate2.data);

 if (msg->operationalrate3.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->operationalrate3.data);

 if (msg->operationalrate4.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->operationalrate4.data);

 if (msg->operationalrate5.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->operationalrate5.data);

 if (msg->operationalrate6.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->operationalrate6.data);

 if (msg->operationalrate7.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->operationalrate7.data);

 if (msg->operationalrate8.status == P80211ENUM_msgitem_status_data_ok)
  word |= p80211rate_to_p2bit(msg->operationalrate8.data);

 result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFSUPPRATES, word);
 if (result) {
  netdev_err(wlandev->netdev,
      "Failed to set supprates=%d.\n", word);
  goto failed;
 }

 result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_TXRATECNTL, word);
 if (result) {
  netdev_err(wlandev->netdev, "Failed to set txrates=%d.\n",
      word);
  goto failed;
 }


 if (msg->bsstype.data == P80211ENUM_bsstype_independent) {
  wlandev->macmode = WLAN_MACMODE_IBSS_STA;

  hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFMAXDATALEN, 2304);
 }


 result = hfa384x_drvr_enable(hw, 0);
 if (result) {
  netdev_err(wlandev->netdev,
      "Enable macport failed, result=%d.\n", result);
  goto failed;
 }

 msg->resultcode.data = P80211ENUM_resultcode_success;

 goto done;
failed:
 netdev_dbg(wlandev->netdev,
     "Failed to set a config option, result=%d\n", result);
 msg->resultcode.data = P80211ENUM_resultcode_invalid_parameters;

done:
 return 0;
}
