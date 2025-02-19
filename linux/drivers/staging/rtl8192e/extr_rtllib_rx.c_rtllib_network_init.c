
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtllib_rx_stats {int SignalStrength; scalar_t__ freq; int signal; scalar_t__ noise; scalar_t__ len; int received_channel; } ;
struct rtllib_qos_data {int dummy; } ;
struct TYPE_3__ {int addr3; } ;
struct rtllib_probe_response {int info_element; int beacon_interval; int * time_stamp; int capability; TYPE_1__ header; } ;
struct TYPE_4__ {scalar_t__ bdSupportHT; } ;
struct rtllib_network {int capability; int listen_interval; int flags; int erp_value; int berp_info_valid; int broadcom_cap_exist; int ralink_cap_exist; int atheros_cap_exist; int cisco_cap_exist; int unknown_cap_exist; int realtek_cap_exit; int marvell_cap_exist; int airgo_cap_exist; int SignalStrength; int RSSI; int mode; int stats; scalar_t__ ssid_len; int ssid; TYPE_2__ bssht; int bssid; scalar_t__ wzc_ie_len; scalar_t__ rsn_ie_len; scalar_t__ wpa_ie_len; int channel; int * CountryIeBuf; scalar_t__ CountryIeLen; scalar_t__ Turbo_Enable; scalar_t__ atim_window; int * hidden_ssid; scalar_t__ hidden_ssid_len; scalar_t__ rates_ex_len; scalar_t__ rates_len; void* beacon_interval; int * time_stamp; int last_scanned; int qos_data; } ;
struct rtllib_device {int dev; } ;


 int HTInitializeBssDesc (TYPE_2__*) ;
 int IEEE_A ;
 int IEEE_B ;
 int IEEE_G ;
 int IEEE_N_24G ;
 int IEEE_N_5G ;
 int MAX_IE_LEN ;
 int NETWORK_EMPTY_ESSID ;
 int NETWORK_HAS_CCK ;
 int NETWORK_HAS_OFDM ;
 scalar_t__ RTLLIB_52GHZ_BAND ;
 int WLAN_CAPABILITY_IBSS ;
 int escape_essid (int ,scalar_t__) ;
 int ether_addr_copy (int ,int ) ;
 int jiffies ;
 void* le16_to_cpu (int ) ;
 int memcpy (int *,struct rtllib_rx_stats*,int) ;
 int memset (int *,int ,int) ;
 int netdev_dbg (int ,char*,int ,int ) ;
 scalar_t__ rtllib_is_empty_essid (int ,scalar_t__) ;
 scalar_t__ rtllib_parse_info_param (struct rtllib_device*,int ,scalar_t__,struct rtllib_network*,struct rtllib_rx_stats*) ;
 scalar_t__ rtllib_translate_todbm (int ) ;

__attribute__((used)) static inline int rtllib_network_init(
 struct rtllib_device *ieee,
 struct rtllib_probe_response *beacon,
 struct rtllib_network *network,
 struct rtllib_rx_stats *stats)
{
 memset(&network->qos_data, 0, sizeof(struct rtllib_qos_data));


 ether_addr_copy(network->bssid, beacon->header.addr3);
 network->capability = le16_to_cpu(beacon->capability);
 network->last_scanned = jiffies;
 network->time_stamp[0] = beacon->time_stamp[0];
 network->time_stamp[1] = beacon->time_stamp[1];
 network->beacon_interval = le16_to_cpu(beacon->beacon_interval);

 network->listen_interval = 0x0A;
 network->rates_len = network->rates_ex_len = 0;
 network->ssid_len = 0;
 network->hidden_ssid_len = 0;
 memset(network->hidden_ssid, 0, sizeof(network->hidden_ssid));
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
 network->realtek_cap_exit = 0;
 network->marvell_cap_exist = 0;
 network->airgo_cap_exist = 0;
 network->Turbo_Enable = 0;
 network->SignalStrength = stats->SignalStrength;
 network->RSSI = stats->SignalStrength;
 network->CountryIeLen = 0;
 memset(network->CountryIeBuf, 0, MAX_IE_LEN);
 HTInitializeBssDesc(&network->bssht);
 if (stats->freq == RTLLIB_52GHZ_BAND) {

  network->channel = stats->received_channel;
 } else
  network->flags |= NETWORK_HAS_CCK;

 network->wpa_ie_len = 0;
 network->rsn_ie_len = 0;
 network->wzc_ie_len = 0;

 if (rtllib_parse_info_param(ieee,
   beacon->info_element,
   (stats->len - sizeof(*beacon)),
   network,
   stats))
  return 1;

 network->mode = 0;
 if (stats->freq == RTLLIB_52GHZ_BAND)
  network->mode = IEEE_A;
 else {
  if (network->flags & NETWORK_HAS_OFDM)
   network->mode |= IEEE_G;
  if (network->flags & NETWORK_HAS_CCK)
   network->mode |= IEEE_B;
 }

 if (network->mode == 0) {
  netdev_dbg(ieee->dev, "Filtered out '%s (%pM)' network.\n",
      escape_essid(network->ssid, network->ssid_len),
      network->bssid);
  return 1;
 }

 if (network->bssht.bdSupportHT) {
  if (network->mode == IEEE_A)
   network->mode = IEEE_N_5G;
  else if (network->mode & (IEEE_G | IEEE_B))
   network->mode = IEEE_N_24G;
 }
 if (rtllib_is_empty_essid(network->ssid, network->ssid_len))
  network->flags |= NETWORK_EMPTY_ESSID;
 stats->signal = 30 + (stats->SignalStrength * 70) / 100;
 stats->noise = rtllib_translate_todbm((u8)(100-stats->signal)) - 25;

 memcpy(&network->stats, stats, sizeof(network->stats));

 return 0;
}
