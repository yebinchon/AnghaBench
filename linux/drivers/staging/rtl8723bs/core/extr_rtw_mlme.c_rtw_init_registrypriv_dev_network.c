
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ DwellTime; scalar_t__ HopSet; scalar_t__ HopPattern; scalar_t__ Length; } ;
struct TYPE_4__ {int Length; int BeaconPeriod; TYPE_1__ FHConfig; } ;
struct wlan_bssid_ex {TYPE_2__ Configuration; int Ssid; int * MacAddress; } ;
struct registry_priv {int ssid; struct wlan_bssid_ex dev_network; } ;
struct ndis_802_11_ssid {int dummy; } ;
struct ndis_802_11_conf {int dummy; } ;
struct eeprom_priv {int dummy; } ;
struct adapter {struct eeprom_priv eeprompriv; struct registry_priv registrypriv; } ;


 int ETH_ALEN ;
 int memcpy (int *,int *,int) ;
 int * myid (struct eeprom_priv*) ;

void rtw_init_registrypriv_dev_network(struct adapter *adapter)
{
 struct registry_priv *pregistrypriv = &adapter->registrypriv;
 struct eeprom_priv *peepriv = &adapter->eeprompriv;
 struct wlan_bssid_ex *pdev_network = &pregistrypriv->dev_network;
 u8 *myhwaddr = myid(peepriv);

 memcpy(pdev_network->MacAddress, myhwaddr, ETH_ALEN);

 memcpy(&pdev_network->Ssid, &pregistrypriv->ssid, sizeof(struct ndis_802_11_ssid));

 pdev_network->Configuration.Length = sizeof(struct ndis_802_11_conf);
 pdev_network->Configuration.BeaconPeriod = 100;
 pdev_network->Configuration.FHConfig.Length = 0;
 pdev_network->Configuration.FHConfig.HopPattern = 0;
 pdev_network->Configuration.FHConfig.HopSet = 0;
 pdev_network->Configuration.FHConfig.DwellTime = 0;
}
