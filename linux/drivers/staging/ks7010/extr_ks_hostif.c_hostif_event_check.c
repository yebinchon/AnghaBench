
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int* buff; size_t qtail; } ;
struct ks_wlan_private {TYPE_1__ hostt; int confirm_wait; int net_dev; } ;
 int SME_EVENT_BUFF_SIZE ;
 int complete (int *) ;
 int get_word (struct ks_wlan_private*) ;
 int hostif_adhoc_set_confirm (struct ks_wlan_private*) ;
 int hostif_associate_indication (struct ks_wlan_private*) ;
 int hostif_bss_scan_confirm (struct ks_wlan_private*) ;
 int hostif_connect_indication (struct ks_wlan_private*) ;
 int hostif_data_indication (struct ks_wlan_private*) ;
 int hostif_infrastructure_set_confirm (struct ks_wlan_private*) ;
 int hostif_mib_get_confirm (struct ks_wlan_private*) ;
 int hostif_mib_set_confirm (struct ks_wlan_private*) ;
 int hostif_mic_failure_confirm (struct ks_wlan_private*) ;
 int hostif_phy_information_confirm (struct ks_wlan_private*) ;
 int hostif_power_mgmt_confirm (struct ks_wlan_private*) ;
 int hostif_ps_adhoc_set_confirm (struct ks_wlan_private*) ;
 int hostif_scan_indication (struct ks_wlan_private*) ;
 int hostif_sleep_confirm (struct ks_wlan_private*) ;
 int hostif_start_confirm (struct ks_wlan_private*) ;
 int hostif_stop_confirm (struct ks_wlan_private*) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static
void hostif_event_check(struct ks_wlan_private *priv)
{
 u16 event;

 event = get_word(priv);
 switch (event) {
 case 142:
  hostif_data_indication(priv);
  break;
 case 139:
  hostif_mib_get_confirm(priv);
  break;
 case 138:
  hostif_mib_set_confirm(priv);
  break;
 case 134:
  hostif_power_mgmt_confirm(priv);
  break;
 case 130:
  hostif_sleep_confirm(priv);
  break;
 case 129:
  hostif_start_confirm(priv);
  break;
 case 143:
  hostif_connect_indication(priv);
  break;
 case 128:
  hostif_stop_confirm(priv);
  break;
 case 133:
  hostif_ps_adhoc_set_confirm(priv);
  break;
 case 140:
 case 141:
  hostif_infrastructure_set_confirm(priv);
  break;
 case 146:
 case 147:
  hostif_adhoc_set_confirm(priv);
  break;
 case 144:
  hostif_associate_indication(priv);
  break;
 case 137:
  hostif_mic_failure_confirm(priv);
  break;
 case 132:
  hostif_bss_scan_confirm(priv);
  break;
 case 136:
 case 135:
  hostif_phy_information_confirm(priv);
  break;
 case 131:
  hostif_scan_indication(priv);
  break;
 case 145:
 default:
  netdev_err(priv->net_dev, "undefined event[%04X]\n", event);

  complete(&priv->confirm_wait);
  break;
 }


 priv->hostt.buff[priv->hostt.qtail] = event;
 priv->hostt.qtail = (priv->hostt.qtail + 1) % SME_EVENT_BUFF_SIZE;
}
