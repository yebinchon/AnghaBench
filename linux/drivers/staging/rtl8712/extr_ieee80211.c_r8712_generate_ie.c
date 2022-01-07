
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int ATIMWindow; int DSConfig; int BeaconPeriod; } ;
struct TYPE_3__ {int SsidLength; int * Ssid; } ;
struct wlan_bssid_ex {TYPE_2__ Configuration; int * rates; TYPE_1__ Ssid; scalar_t__ Privacy; int * IEs; } ;
struct registry_priv {scalar_t__ preamble; int wireless_mode; struct wlan_bssid_ex dev_network; } ;
typedef int __le16 ;


 scalar_t__ PREAMBLE_SHORT ;
 int _DSSET_IE_ ;
 int _EXT_SUPPORTEDRATES_IE_ ;
 int _IBSS_PARA_IE_ ;
 int _SSID_IE_ ;
 int _SUPPORTEDRATES_IE_ ;
 scalar_t__ cap_IBSS ;
 scalar_t__ cap_Privacy ;
 scalar_t__ cap_ShortPremble ;
 int cpu_to_le16 (scalar_t__) ;
 int r8712_get_rateset_len (int *) ;
 int * r8712_set_ie (int *,int ,int,int *,int*) ;
 int set_supported_rate (int *,int ) ;

int r8712_generate_ie(struct registry_priv *registrypriv)
{
 int rate_len;
 uint sz = 0;
 struct wlan_bssid_ex *dev_network = &registrypriv->dev_network;
 u8 *ie = dev_network->IEs;
 u16 beaconPeriod = (u16)dev_network->Configuration.BeaconPeriod;


 sz += 8;
 ie += sz;

 *(__le16 *)ie = cpu_to_le16(beaconPeriod);
 sz += 2;
 ie += 2;

 *(u16 *)ie = 0;
 *(__le16 *)ie |= cpu_to_le16(cap_IBSS);
 if (registrypriv->preamble == PREAMBLE_SHORT)
  *(__le16 *)ie |= cpu_to_le16(cap_ShortPremble);
 if (dev_network->Privacy)
  *(__le16 *)ie |= cpu_to_le16(cap_Privacy);
 sz += 2;
 ie += 2;

 ie = r8712_set_ie(ie, _SSID_IE_, dev_network->Ssid.SsidLength,
     dev_network->Ssid.Ssid, &sz);

 set_supported_rate(dev_network->rates, registrypriv->wireless_mode);
 rate_len = r8712_get_rateset_len(dev_network->rates);
 if (rate_len > 8) {
  ie = r8712_set_ie(ie, _SUPPORTEDRATES_IE_, 8,
      dev_network->rates, &sz);
  ie = r8712_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8),
      (dev_network->rates + 8), &sz);
 } else {
  ie = r8712_set_ie(ie, _SUPPORTEDRATES_IE_,
      rate_len, dev_network->rates, &sz);
 }

 ie = r8712_set_ie(ie, _DSSET_IE_, 1,
     (u8 *)&dev_network->Configuration.DSConfig, &sz);

 ie = r8712_set_ie(ie, _IBSS_PARA_IE_, 2,
     (u8 *)&dev_network->Configuration.ATIMWindow, &sz);
 return sz;
}
