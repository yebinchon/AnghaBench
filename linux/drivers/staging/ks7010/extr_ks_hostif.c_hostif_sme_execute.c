
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_10__ {int confirm_wait; int snooze_guard; } ;
struct TYPE_9__ {int operation_mode; int fragment; int rts; int scan_type; } ;
struct TYPE_8__ {int ielen; int * ie; int wps_enabled; } ;
struct TYPE_6__ {int failure; int stop; int counter; } ;
struct TYPE_7__ {TYPE_1__ mic_failure; } ;
struct ks_wlan_private {int region; int confirm_wait; int dev_state; TYPE_5__ psstatus; TYPE_4__ reg; int eeprom_checksum; int gain; TYPE_3__ wps; TYPE_2__ wpa; int net_dev; int scan_ssid_len; int scan_ssid; int * eth_addr; } ;


 int DEVICE_STATE_BOOT ;
 int DEVICE_STATE_INIT ;
 int DEVICE_STATE_PREINIT ;
 int DOT11_FRAGMENTATION_THRESHOLD ;
 int DOT11_MAC_ADDRESS ;
 int DOT11_PRODUCT_VERSION ;
 int DOT11_RTS_THRESHOLD ;
 int EEPROM_FW_NOT_SUPPORT ;
 int ETH_ALEN ;
 int LOCAL_CURRENTADDRESS ;
 int LOCAL_EEPROM_SUM ;
 int LOCAL_GAIN ;
 int LOCAL_REGION ;
 int LOCAL_WPS_ENABLE ;
 int LOCAL_WPS_PROBE_REQ ;
 int atomic_set (int *,int ) ;
 int complete (int *) ;
 int hostif_bss_scan_request (struct ks_wlan_private*,int ,int ,int ) ;
 int hostif_mib_get_request (struct ks_wlan_private*,int ) ;
 int hostif_mib_set_request_int (struct ks_wlan_private*,int ,int ) ;
 int hostif_mib_set_request_ostring (struct ks_wlan_private*,int ,int *,int) ;
 int hostif_mic_failure_request (struct ks_wlan_private*,int ,int ) ;
 int hostif_phy_information_request (struct ks_wlan_private*) ;
 int hostif_sme_mode_setup (struct ks_wlan_private*) ;
 int hostif_sme_multicast_set (struct ks_wlan_private*) ;
 int hostif_sme_power_mgmt_set (struct ks_wlan_private*) ;
 int hostif_sme_set_key (struct ks_wlan_private*,int) ;
 int hostif_sme_set_pmksa (struct ks_wlan_private*) ;
 int hostif_sme_set_rsn (struct ks_wlan_private*,int) ;
 int hostif_sme_set_wep (struct ks_wlan_private*,int) ;
 int hostif_sme_sleep_set (struct ks_wlan_private*) ;
 int hostif_start_request (struct ks_wlan_private*,int ) ;
 int hostif_stop_request (struct ks_wlan_private*) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static void hostif_sme_execute(struct ks_wlan_private *priv, int event)
{
 u16 failure;

 switch (event) {
 case 147:
  if (priv->dev_state == DEVICE_STATE_BOOT)
   hostif_mib_get_request(priv, DOT11_MAC_ADDRESS);
  break;
 case 177:
  hostif_sme_multicast_set(priv);
  break;
 case 183:
  hostif_mib_set_request_ostring(priv, LOCAL_CURRENTADDRESS,
            &priv->eth_addr[0], ETH_ALEN);
  break;
 case 190:
  hostif_bss_scan_request(priv, priv->reg.scan_type,
     priv->scan_ssid, priv->scan_ssid_len);
  break;
 case 173:
  hostif_sme_power_mgmt_set(priv);
  break;
 case 175:
  hostif_phy_information_request(priv);
  break;
 case 181:
  failure = priv->wpa.mic_failure.failure;
  if (failure != 1 && failure != 2) {
   netdev_err(priv->net_dev,
       "SME_MIC_FAILURE_REQUEST: failure count=%u error?\n",
       failure);
   return;
  }
  hostif_mic_failure_request(priv, failure - 1, (failure == 1) ?
         0 : priv->wpa.mic_failure.counter);
  break;
 case 182:
  if (priv->wpa.mic_failure.failure == 2) {
   if (priv->wpa.mic_failure.stop)
    priv->wpa.mic_failure.stop = 0;
   priv->wpa.mic_failure.failure = 0;
   hostif_start_request(priv, priv->reg.operation_mode);
  }
  break;
 case 185:
  if (priv->dev_state == DEVICE_STATE_BOOT)
   hostif_mib_get_request(priv, DOT11_PRODUCT_VERSION);
  break;
 case 184:
  if (priv->dev_state == DEVICE_STATE_BOOT)
   priv->dev_state = DEVICE_STATE_PREINIT;
  break;
 case 143:
  hostif_stop_request(priv);
  break;
 case 161:
  hostif_mib_set_request_int(priv, DOT11_RTS_THRESHOLD,
        priv->reg.rts);
  break;
 case 188:
  hostif_mib_set_request_int(priv, DOT11_FRAGMENTATION_THRESHOLD,
        priv->reg.fragment);
  break;
 case 138:
 case 136:
 case 134:
 case 132:
 case 130:
 case 140:
  hostif_sme_set_wep(priv, event);
  break;
 case 163:
 case 167:
 case 171:
 case 169:
 case 165:
  hostif_sme_set_rsn(priv, event);
  break;
 case 160:
 case 149:
 case 156:
 case 155:
 case 154:
 case 153:
 case 151:
 case 158:
 case 157:
  hostif_sme_set_key(priv, event);
  break;
 case 152:
  hostif_sme_set_pmksa(priv);
  break;
 case 129:
  hostif_mib_set_request_int(priv, LOCAL_WPS_ENABLE,
        priv->wps.wps_enabled);
  break;
 case 128:
  hostif_mib_set_request_ostring(priv, LOCAL_WPS_PROBE_REQ,
            priv->wps.ie, priv->wps.ielen);
  break;
 case 179:
  hostif_sme_mode_setup(priv);
  break;
 case 159:
  hostif_mib_set_request_ostring(priv, LOCAL_GAIN,
            &priv->gain, sizeof(priv->gain));
  break;
 case 186:
  hostif_mib_get_request(priv, LOCAL_GAIN);
  break;
 case 187:
  priv->eeprom_checksum = EEPROM_FW_NOT_SUPPORT;
  hostif_mib_get_request(priv, LOCAL_EEPROM_SUM);
  break;
 case 145:
  hostif_start_request(priv, priv->reg.operation_mode);
  break;
 case 146:

  atomic_set(&priv->psstatus.snooze_guard, 0);
  atomic_set(&priv->psstatus.confirm_wait, 0);
  if (priv->dev_state == DEVICE_STATE_PREINIT)
   priv->dev_state = DEVICE_STATE_INIT;

  complete(&priv->confirm_wait);
  break;
 case 148:
  hostif_sme_sleep_set(priv);
  break;
 case 150:
  hostif_mib_set_request_int(priv, LOCAL_REGION, priv->region);
  break;
 case 178:
 case 191:
 case 174:
 case 176:
 case 144:
 case 162:
 case 189:
 case 139:
 case 137:
 case 135:
 case 133:
 case 131:
 case 141:
 case 164:
 case 168:
 case 172:
 case 170:
 case 166:
 case 180:
 case 142:
 default:
  break;
 }
}
