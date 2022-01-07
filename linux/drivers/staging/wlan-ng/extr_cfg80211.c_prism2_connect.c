
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
struct wlandevice {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_7__ {int len; int data; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
struct TYPE_6__ {int data; } ;
struct p80211msg_lnxreq_autojoin {TYPE_4__ ssid; int msgcode; TYPE_2__ authtype; } ;
struct net_device {struct wlandevice* ml_priv; } ;
struct ieee80211_channel {int center_freq; } ;
struct TYPE_5__ {scalar_t__ cipher_group; } ;
struct cfg80211_connect_params {int ssid_len; scalar_t__ auth_type; int key_idx; int ssid; scalar_t__ key; int key_len; TYPE_1__ crypto; struct ieee80211_channel* channel; } ;


 int DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL ;
 int DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED ;
 int DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED ;
 int DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID ;
 int DIDMSG_LNXREQ_AUTOJOIN ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ NL80211_AUTHTYPE_AUTOMATIC ;
 scalar_t__ NL80211_AUTHTYPE_OPEN_SYSTEM ;
 scalar_t__ NL80211_AUTHTYPE_SHARED_KEY ;
 int NUM_WEPKEYS ;
 int P80211ENUM_authalg_opensystem ;
 int P80211ENUM_authalg_sharedkey ;
 int P80211ENUM_truth_false ;
 int P80211ENUM_truth_true ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int didmib_dot11smt_wepdefaultkeystable_key (int) ;
 int ieee80211_frequency_to_channel (int ) ;
 int memcpy (int ,int ,int) ;
 int netdev_warn (struct net_device*,char*,scalar_t__) ;
 int p80211req_dorequest (struct wlandevice*,int *) ;
 int prism2_domibset_pstr32 (struct wlandevice*,int ,int ,int *) ;
 int prism2_domibset_uint32 (struct wlandevice*,int ,int) ;

__attribute__((used)) static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
     struct cfg80211_connect_params *sme)
{
 struct wlandevice *wlandev = dev->ml_priv;
 struct ieee80211_channel *channel = sme->channel;
 struct p80211msg_lnxreq_autojoin msg_join;
 u32 did;
 int length = sme->ssid_len;
 int chan = -1;
 int is_wep = (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_WEP40) ||
     (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_WEP104);
 int result;
 int err = 0;


 if (channel) {
  chan = ieee80211_frequency_to_channel(channel->center_freq);
  result = prism2_domibset_uint32(wlandev,
      DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
      chan);
  if (result)
   goto exit;
 }


 if ((sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM) ||
     ((sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) && !is_wep))
  msg_join.authtype.data = P80211ENUM_authalg_opensystem;
 else if ((sme->auth_type == NL80211_AUTHTYPE_SHARED_KEY) ||
   ((sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) && is_wep))
  msg_join.authtype.data = P80211ENUM_authalg_sharedkey;
 else
  netdev_warn(dev,
       "Unhandled authorisation type for connect (%d)\n",
       sme->auth_type);


 if (is_wep) {
  if (sme->key) {
   if (sme->key_idx >= NUM_WEPKEYS)
    return -EINVAL;

   result = prism2_domibset_uint32(wlandev,
    DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
    sme->key_idx);
   if (result)
    goto exit;


   did = didmib_dot11smt_wepdefaultkeystable_key(
     sme->key_idx + 1);
   result = prism2_domibset_pstr32(wlandev,
       did, sme->key_len,
       (u8 *)sme->key);
   if (result)
    goto exit;
  }





  result = prism2_domibset_uint32(wlandev,
      DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED,
      P80211ENUM_truth_true);
  if (result)
   goto exit;

  result = prism2_domibset_uint32(wlandev,
      DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED,
      P80211ENUM_truth_true);
  if (result)
   goto exit;

 } else {



  result = prism2_domibset_uint32(wlandev,
      DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED,
      P80211ENUM_truth_false);
  if (result)
   goto exit;

  result = prism2_domibset_uint32(wlandev,
      DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED,
      P80211ENUM_truth_false);
  if (result)
   goto exit;
 }




 msg_join.msgcode = DIDMSG_LNXREQ_AUTOJOIN;

 memcpy(msg_join.ssid.data.data, sme->ssid, length);
 msg_join.ssid.data.len = length;

 result = p80211req_dorequest(wlandev, (u8 *)&msg_join);

exit:
 if (result)
  err = -EFAULT;

 return err;
}
