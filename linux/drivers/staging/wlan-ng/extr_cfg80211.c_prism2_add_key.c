
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct wlandevice {int dummy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wlandevice* ml_priv; } ;
struct key_params {scalar_t__ cipher; int key; int key_len; } ;


 int DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ NUM_WEPKEYS ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int didmib_dot11smt_wepdefaultkeystable_key (scalar_t__) ;
 int pr_debug (char*) ;
 scalar_t__ prism2_domibset_pstr32 (struct wlandevice*,int ,int ,int ) ;
 scalar_t__ prism2_domibset_uint32 (struct wlandevice*,int ,scalar_t__) ;

__attribute__((used)) static int prism2_add_key(struct wiphy *wiphy, struct net_device *dev,
     u8 key_index, bool pairwise, const u8 *mac_addr,
     struct key_params *params)
{
 struct wlandevice *wlandev = dev->ml_priv;
 u32 did;

 if (key_index >= NUM_WEPKEYS)
  return -EINVAL;

 if (params->cipher != WLAN_CIPHER_SUITE_WEP40 &&
     params->cipher != WLAN_CIPHER_SUITE_WEP104) {
  pr_debug("Unsupported cipher suite\n");
  return -EFAULT;
 }

 if (prism2_domibset_uint32(wlandev,
       DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
       key_index))
  return -EFAULT;


 did = didmib_dot11smt_wepdefaultkeystable_key(key_index + 1);

 if (prism2_domibset_pstr32(wlandev, did, params->key_len, params->key))
  return -EFAULT;
 return 0;
}
