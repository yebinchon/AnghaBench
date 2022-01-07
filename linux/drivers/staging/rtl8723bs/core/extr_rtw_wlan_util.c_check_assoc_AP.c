
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint ;
typedef int u8 ;
typedef unsigned char u32 ;
struct ndis_802_11_fix_ie {int dummy; } ;
struct ndis_80211_var_ie {int ElementID; int* data; int Length; } ;


 int AIRGOCAP_OUI ;
 int ARTHEROS_OUI1 ;
 int ARTHEROS_OUI2 ;
 int BROADCOM_OUI1 ;
 int BROADCOM_OUI2 ;
 int BROADCOM_OUI3 ;
 int CISCO_OUI ;
 int DBG_871X (char*) ;
 unsigned char HT_IOT_PEER_AIRGO ;
 unsigned char HT_IOT_PEER_ATHEROS ;
 unsigned char HT_IOT_PEER_BROADCOM ;
 unsigned char HT_IOT_PEER_CISCO ;
 unsigned char HT_IOT_PEER_MARVELL ;
 unsigned char HT_IOT_PEER_RALINK ;
 unsigned char HT_IOT_PEER_REALTEK ;
 unsigned char HT_IOT_PEER_REALTEK_92SE ;
 unsigned char HT_IOT_PEER_REALTEK_JAGUAR_BCUTAP ;
 unsigned char HT_IOT_PEER_REALTEK_JAGUAR_CCUTAP ;
 unsigned char HT_IOT_PEER_REALTEK_SOFTAP ;
 unsigned char HT_IOT_PEER_UNKNOWN ;
 int MARVELL_OUI ;
 int RALINK_OUI ;
 int REALTEK_OUI ;
 int RT_HT_CAP_USE_92SE ;
 int RT_HT_CAP_USE_JAGUAR_BCUT ;
 int RT_HT_CAP_USE_JAGUAR_CCUT ;
 int RT_HT_CAP_USE_SOFTAP ;

 int memcmp (int*,int ,int) ;

unsigned char check_assoc_AP(u8 *pframe, uint len)
{
 unsigned int i;
 struct ndis_80211_var_ie *pIE;

 for (i = sizeof(struct ndis_802_11_fix_ie); i < len;) {
  pIE = (struct ndis_80211_var_ie *)(pframe + i);

  switch (pIE->ElementID) {
  case 128:
   if ((!memcmp(pIE->data, ARTHEROS_OUI1, 3)) || (!memcmp(pIE->data, ARTHEROS_OUI2, 3))) {
    DBG_871X("link to Artheros AP\n");
    return HT_IOT_PEER_ATHEROS;
   } else if ((!memcmp(pIE->data, BROADCOM_OUI1, 3))
      || (!memcmp(pIE->data, BROADCOM_OUI2, 3))
      || (!memcmp(pIE->data, BROADCOM_OUI3, 3))) {
    DBG_871X("link to Broadcom AP\n");
    return HT_IOT_PEER_BROADCOM;
   } else if (!memcmp(pIE->data, MARVELL_OUI, 3)) {
    DBG_871X("link to Marvell AP\n");
    return HT_IOT_PEER_MARVELL;
   } else if (!memcmp(pIE->data, RALINK_OUI, 3)) {
    DBG_871X("link to Ralink AP\n");
    return HT_IOT_PEER_RALINK;
   } else if (!memcmp(pIE->data, CISCO_OUI, 3)) {
    DBG_871X("link to Cisco AP\n");
    return HT_IOT_PEER_CISCO;
   } else if (!memcmp(pIE->data, REALTEK_OUI, 3)) {
    u32 Vender = HT_IOT_PEER_REALTEK;

    if (pIE->Length >= 5) {
     if (pIE->data[4] == 1)


      if (pIE->data[5] & RT_HT_CAP_USE_92SE)

       Vender = HT_IOT_PEER_REALTEK_92SE;

     if (pIE->data[5] & RT_HT_CAP_USE_SOFTAP)
      Vender = HT_IOT_PEER_REALTEK_SOFTAP;

     if (pIE->data[4] == 2) {
      if (pIE->data[6] & RT_HT_CAP_USE_JAGUAR_BCUT) {
       Vender = HT_IOT_PEER_REALTEK_JAGUAR_BCUTAP;
       DBG_871X("link to Realtek JAGUAR_BCUTAP\n");
      }
      if (pIE->data[6] & RT_HT_CAP_USE_JAGUAR_CCUT) {
       Vender = HT_IOT_PEER_REALTEK_JAGUAR_CCUTAP;
       DBG_871X("link to Realtek JAGUAR_CCUTAP\n");
      }
     }
    }

    DBG_871X("link to Realtek AP\n");
    return Vender;
   } else if (!memcmp(pIE->data, AIRGOCAP_OUI, 3)) {
    DBG_871X("link to Airgo Cap\n");
    return HT_IOT_PEER_AIRGO;
   } else
    break;

  default:
   break;
  }

  i += (pIE->Length + 2);
 }

 DBG_871X("link to new AP\n");
 return HT_IOT_PEER_UNKNOWN;
}
