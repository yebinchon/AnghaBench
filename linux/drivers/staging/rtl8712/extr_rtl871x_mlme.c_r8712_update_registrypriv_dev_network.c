
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ InfrastructureMode; } ;
struct wlan_network {TYPE_3__ network; } ;
struct TYPE_5__ {int ATIMWindow; int DSConfig; } ;
struct wlan_bssid_ex {scalar_t__ InfrastructureMode; int IELength; int Length; TYPE_2__ Configuration; int NetworkTypeInUse; scalar_t__ Rssi; int Privacy; } ;
struct security_priv {scalar_t__ PrivacyAlgrthm; } ;
struct registry_priv {int wireless_mode; int channel; struct wlan_bssid_ex dev_network; } ;
struct TYPE_4__ {struct wlan_network cur_network; } ;
struct _adapter {TYPE_1__ mlmepriv; struct security_priv securitypriv; struct registry_priv registrypriv; } ;


 int Ndis802_11DS ;
 scalar_t__ Ndis802_11IBSS ;
 int Ndis802_11OFDM24 ;
 int Ndis802_11OFDM5 ;




 int cpu_to_le32 (int) ;
 int r8712_generate_ie (struct registry_priv*) ;
 int r8712_get_wlan_bssid_ex_sz (struct wlan_bssid_ex*) ;

void r8712_update_registrypriv_dev_network(struct _adapter *adapter)
{
 int sz = 0;
 struct registry_priv *pregistrypriv = &adapter->registrypriv;
 struct wlan_bssid_ex *pdev_network = &pregistrypriv->dev_network;
 struct security_priv *psecuritypriv = &adapter->securitypriv;
 struct wlan_network *cur_network = &adapter->mlmepriv.cur_network;

 pdev_network->Privacy = cpu_to_le32(psecuritypriv->PrivacyAlgrthm
         > 0 ? 1 : 0);
 pdev_network->Rssi = 0;
 switch (pregistrypriv->wireless_mode) {
 case 130:
  pdev_network->NetworkTypeInUse = Ndis802_11DS;
  break;
 case 128:
 case 129:
  pdev_network->NetworkTypeInUse = Ndis802_11OFDM24;
  break;
 case 131:
  pdev_network->NetworkTypeInUse = Ndis802_11OFDM5;
  break;
 default:

  break;
 }
 pdev_network->Configuration.DSConfig = pregistrypriv->channel;
 if (cur_network->network.InfrastructureMode == Ndis802_11IBSS)
  pdev_network->Configuration.ATIMWindow = 3;
 pdev_network->InfrastructureMode = cur_network->network.InfrastructureMode;



 sz = r8712_generate_ie(pregistrypriv);
 pdev_network->IELength = sz;
 pdev_network->Length = r8712_get_wlan_bssid_ex_sz(pdev_network);
}
