
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wpa_suite ;
typedef int u8 ;
typedef int u32 ;
struct wpa_suite {void* rsn_capability; int rsn_mode; void* size; struct wpa_suite** suite; } ;
struct rsn_mode {void* rsn_capability; int rsn_mode; void* size; struct rsn_mode** suite; } ;
struct TYPE_2__ {int version; int rsn_enabled; int key_mgmt_suite; int group_suite; int pairwise_suite; } ;
struct ks_wlan_private {TYPE_1__ wpa; } ;
typedef int rsn_mode ;


 int CIPHER_ID_LEN ;
 int * CIPHER_ID_WPA2_CCMP ;
 int * CIPHER_ID_WPA2_NONE ;
 int * CIPHER_ID_WPA2_TKIP ;
 int * CIPHER_ID_WPA2_WEP104 ;
 int * CIPHER_ID_WPA2_WEP40 ;
 int * CIPHER_ID_WPA_CCMP ;
 int * CIPHER_ID_WPA_NONE ;
 int * CIPHER_ID_WPA_TKIP ;
 int * CIPHER_ID_WPA_WEP104 ;
 int * CIPHER_ID_WPA_WEP40 ;
 int DOT11_RSN_CONFIG_AUTH_SUITE ;
 int DOT11_RSN_CONFIG_MULTICAST_CIPHER ;
 int DOT11_RSN_CONFIG_UNICAST_CIPHER ;
 int DOT11_RSN_ENABLED ;







 int IW_AUTH_WPA_VERSION_WPA ;
 int IW_AUTH_WPA_VERSION_WPA2 ;
 int KEY_MGMT_ID_LEN ;
 int * KEY_MGMT_ID_WPA2_1X ;
 int * KEY_MGMT_ID_WPA2_NONE ;
 int * KEY_MGMT_ID_WPA2_PSK ;
 int * KEY_MGMT_ID_WPA2_WPANONE ;
 int * KEY_MGMT_ID_WPA_1X ;
 int * KEY_MGMT_ID_WPA_NONE ;
 int * KEY_MGMT_ID_WPA_PSK ;
 int * KEY_MGMT_ID_WPA_WPANONE ;
 int LOCAL_RSN_MODE ;
 int RSN_MODE_NONE ;
 int RSN_MODE_WPA ;
 int RSN_MODE_WPA2 ;





 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int hostif_mib_set_request_bool (struct ks_wlan_private*,int ,int ) ;
 int hostif_mib_set_request_ostring (struct ks_wlan_private*,int ,struct wpa_suite*,int) ;
 int le16_to_cpu (void*) ;
 int memcpy (struct wpa_suite*,int const*,int) ;
 int memset (struct wpa_suite*,int ,int) ;

__attribute__((used)) static void hostif_sme_set_rsn(struct ks_wlan_private *priv, int type)
{
 struct wpa_suite wpa_suite;
 struct rsn_mode rsn_mode;
 size_t size;
 u32 mode;
 const u8 *buf = ((void*)0);

 memset(&wpa_suite, 0, sizeof(wpa_suite));

 switch (type) {
 case 128:
  wpa_suite.size = cpu_to_le16(1);
  switch (priv->wpa.pairwise_suite) {
  case 138:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_NONE : CIPHER_ID_WPA_NONE;
   break;
  case 135:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_WEP40 : CIPHER_ID_WPA_WEP40;
   break;
  case 137:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_TKIP : CIPHER_ID_WPA_TKIP;
   break;
  case 139:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_CCMP : CIPHER_ID_WPA_CCMP;
   break;
  case 136:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_WEP104 : CIPHER_ID_WPA_WEP104;
   break;
  }

  if (buf)
   memcpy(&wpa_suite.suite[0][0], buf, CIPHER_ID_LEN);
  size = sizeof(wpa_suite.size) +
         (CIPHER_ID_LEN * le16_to_cpu(wpa_suite.size));
  hostif_mib_set_request_ostring(priv,
            DOT11_RSN_CONFIG_UNICAST_CIPHER,
            &wpa_suite, size);
  break;
 case 130:
  switch (priv->wpa.group_suite) {
  case 138:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_NONE : CIPHER_ID_WPA_NONE;
   break;
  case 135:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_WEP40 : CIPHER_ID_WPA_WEP40;
   break;
  case 137:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_TKIP : CIPHER_ID_WPA_TKIP;
   break;
  case 139:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_CCMP : CIPHER_ID_WPA_CCMP;
   break;
  case 136:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    CIPHER_ID_WPA2_WEP104 : CIPHER_ID_WPA_WEP104;
   break;
  }
  if (buf)
   memcpy(&wpa_suite.suite[0][0], buf, CIPHER_ID_LEN);
  hostif_mib_set_request_ostring(priv,
            DOT11_RSN_CONFIG_MULTICAST_CIPHER,
            &wpa_suite.suite[0][0],
            CIPHER_ID_LEN);
  break;
 case 132:
  wpa_suite.size = cpu_to_le16(1);
  switch (priv->wpa.key_mgmt_suite) {
  case 134:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    KEY_MGMT_ID_WPA2_1X : KEY_MGMT_ID_WPA_1X;
   break;
  case 133:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    KEY_MGMT_ID_WPA2_PSK : KEY_MGMT_ID_WPA_PSK;
   break;
  case 0:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    KEY_MGMT_ID_WPA2_NONE : KEY_MGMT_ID_WPA_NONE;
   break;
  case 4:
   buf = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
    KEY_MGMT_ID_WPA2_WPANONE :
    KEY_MGMT_ID_WPA_WPANONE;
   break;
  }

  if (buf)
   memcpy(&wpa_suite.suite[0][0], buf, KEY_MGMT_ID_LEN);
  size = sizeof(wpa_suite.size) +
         (KEY_MGMT_ID_LEN * le16_to_cpu(wpa_suite.size));
  hostif_mib_set_request_ostring(priv,
            DOT11_RSN_CONFIG_AUTH_SUITE,
            &wpa_suite, size);
  break;
 case 131:
  hostif_mib_set_request_bool(priv, DOT11_RSN_ENABLED,
         priv->wpa.rsn_enabled);
  break;
 case 129:
  mode = (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) ?
   RSN_MODE_WPA2 :
   (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA) ?
    RSN_MODE_WPA : RSN_MODE_NONE;
  rsn_mode.rsn_mode = cpu_to_le32(mode);
  rsn_mode.rsn_capability = cpu_to_le16(0);
  hostif_mib_set_request_ostring(priv, LOCAL_RSN_MODE,
            &rsn_mode, sizeof(rsn_mode));
  break;
 }
}
