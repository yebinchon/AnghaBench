
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wpa ;
typedef int u8 ;
struct wlandevice {int netdev; } ;
struct p80211pstrd {int len; int data; } ;
struct p80211msg_dot11req_mibset {int dummy; } ;
struct mibrec {int did; } ;
struct hfa384x_wpa_data {int data; int datalen; } ;
struct hfa384x {int dummy; } ;



 int HFA384x_RID_CNFWPADATA ;
 int cpu_to_le16 (int ) ;
 int hfa384x_drvr_getconfig (struct hfa384x*,int ,int *,int) ;
 int hfa384x_drvr_setconfig (struct hfa384x*,int ,int *,int) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int prism2mib_priv(struct mibrec *mib,
     int isget,
     struct wlandevice *wlandev,
     struct hfa384x *hw,
     struct p80211msg_dot11req_mibset *msg, void *data)
{
 struct p80211pstrd *pstr = data;

 switch (mib->did) {
 case 128: {
  struct hfa384x_wpa_data wpa;

  if (isget) {
   hfa384x_drvr_getconfig(hw,
            HFA384x_RID_CNFWPADATA,
            (u8 *)&wpa,
            sizeof(wpa));
   pstr->len = le16_to_cpu(wpa.datalen);
   memcpy(pstr->data, wpa.data, pstr->len);
  } else {
   wpa.datalen = cpu_to_le16(pstr->len);
   memcpy(wpa.data, pstr->data, pstr->len);

   hfa384x_drvr_setconfig(hw,
            HFA384x_RID_CNFWPADATA,
            (u8 *)&wpa,
            sizeof(wpa));
  }
  break;
 }
 default:
  netdev_err(wlandev->netdev, "Unhandled DID 0x%08x\n", mib->did);
 }

 return 0;
}
