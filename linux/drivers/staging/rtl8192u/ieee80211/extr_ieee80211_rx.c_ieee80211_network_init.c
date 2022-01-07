
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_rx_stats {scalar_t__ freq; int signal; int SignalStrength; scalar_t__ noise; scalar_t__ len; int received_channel; } ;
struct TYPE_5__ {struct ieee80211_rx_stats* addr3; } ;
struct ieee80211_probe_response {int info_element; int beacon_interval; int * time_stamp; int capability; TYPE_2__ header; } ;
struct TYPE_6__ {scalar_t__ bdSupportHT; } ;
struct TYPE_4__ {scalar_t__ old_param_count; scalar_t__ param_count; scalar_t__ supported; scalar_t__ active; } ;
struct ieee80211_network {int capability; int listen_interval; int flags; int erp_value; int berp_info_valid; int broadcom_cap_exist; int ralink_cap_exist; int atheros_cap_exist; int cisco_cap_exist; int unknown_cap_exist; int mode; int stats; scalar_t__ ssid_len; int ssid; TYPE_3__ bssht; int * bssid; scalar_t__ rsn_ie_len; scalar_t__ wpa_ie_len; int channel; int CountryIeBuf; scalar_t__ CountryIeLen; scalar_t__ Turbo_Enable; scalar_t__ atim_window; scalar_t__ last_associate; scalar_t__ rates_ex_len; scalar_t__ rates_len; void* beacon_interval; void** time_stamp; int last_scanned; TYPE_1__ qos_data; } ;
struct ieee80211_device {int dummy; } ;


 int ETH_ALEN ;
 int HTInitializeBssDesc (TYPE_3__*) ;
 scalar_t__ IEEE80211_52GHZ_BAND ;
 int IEEE80211_DEBUG_SCAN (char*,int ,int *) ;
 int IEEE_A ;
 int IEEE_B ;
 int IEEE_G ;
 int IEEE_N_24G ;
 int IEEE_N_5G ;
 int MAX_IE_LEN ;
 int NETWORK_EMPTY_ESSID ;
 int NETWORK_HAS_CCK ;
 int NETWORK_HAS_OFDM ;
 int WLAN_CAPABILITY_IBSS ;
 int escape_essid (int ,scalar_t__) ;
 scalar_t__ ieee80211_is_empty_essid (int ,scalar_t__) ;
 scalar_t__ ieee80211_parse_info_param (struct ieee80211_device*,int ,scalar_t__,struct ieee80211_network*,struct ieee80211_rx_stats*) ;
 scalar_t__ ieee80211_translate_todbm (int ) ;
 int jiffies ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int memcpy (int *,struct ieee80211_rx_stats*,int) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static inline int ieee80211_network_init(
 struct ieee80211_device *ieee,
 struct ieee80211_probe_response *beacon,
 struct ieee80211_network *network,
 struct ieee80211_rx_stats *stats)
{





 network->qos_data.active = 0;
 network->qos_data.supported = 0;
 network->qos_data.param_count = 0;
 network->qos_data.old_param_count = 0;


 memcpy(network->bssid, beacon->header.addr3, ETH_ALEN);
 network->capability = le16_to_cpu(beacon->capability);
 network->last_scanned = jiffies;
 network->time_stamp[0] = le32_to_cpu(beacon->time_stamp[0]);
 network->time_stamp[1] = le32_to_cpu(beacon->time_stamp[1]);
 network->beacon_interval = le16_to_cpu(beacon->beacon_interval);

 network->listen_interval = 0x0A;
 network->rates_len = network->rates_ex_len = 0;
 network->last_associate = 0;
 network->ssid_len = 0;
 network->flags = 0;
 network->atim_window = 0;
 network->erp_value = (network->capability & WLAN_CAPABILITY_IBSS) ?
     0x3 : 0x0;
 network->berp_info_valid = 0;
 network->broadcom_cap_exist = 0;
 network->ralink_cap_exist = 0;
 network->atheros_cap_exist = 0;
 network->cisco_cap_exist = 0;
 network->unknown_cap_exist = 0;



 network->CountryIeLen = 0;
 memset(network->CountryIeBuf, 0, MAX_IE_LEN);


 HTInitializeBssDesc(&network->bssht);
 if (stats->freq == IEEE80211_52GHZ_BAND) {

  network->channel = stats->received_channel;
 } else
  network->flags |= NETWORK_HAS_CCK;

 network->wpa_ie_len = 0;
 network->rsn_ie_len = 0;

 if (ieee80211_parse_info_param
     (ieee, beacon->info_element, stats->len - sizeof(*beacon), network, stats))
  return 1;

 network->mode = 0;
 if (stats->freq == IEEE80211_52GHZ_BAND)
  network->mode = IEEE_A;
 else {
  if (network->flags & NETWORK_HAS_OFDM)
   network->mode |= IEEE_G;
  if (network->flags & NETWORK_HAS_CCK)
   network->mode |= IEEE_B;
 }

 if (network->mode == 0) {
  IEEE80211_DEBUG_SCAN("Filtered out '%s (%pM)' "
         "network.\n",
         escape_essid(network->ssid,
        network->ssid_len),
         network->bssid);
  return 1;
 }

 if (network->bssht.bdSupportHT) {
  if (network->mode == IEEE_A)
   network->mode = IEEE_N_5G;
  else if (network->mode & (IEEE_G | IEEE_B))
   network->mode = IEEE_N_24G;
 }
 if (ieee80211_is_empty_essid(network->ssid, network->ssid_len))
  network->flags |= NETWORK_EMPTY_ESSID;

 stats->signal = 30 + (stats->SignalStrength * 70) / 100;

 stats->noise = ieee80211_translate_todbm((u8)(100 - stats->signal)) - 25;

 memcpy(&network->stats, stats, sizeof(network->stats));

 return 0;
}
