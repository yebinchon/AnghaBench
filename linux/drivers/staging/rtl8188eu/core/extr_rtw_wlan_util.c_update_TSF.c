
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct mlme_ext_priv {int TSFValue; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

void update_TSF(struct mlme_ext_priv *pmlmeext, u8 *pframe, uint len)
{
 u8 *pIE;
 __le32 *pbuf;

 pIE = pframe + sizeof(struct ieee80211_hdr_3addr);
 pbuf = (__le32 *)pIE;

 pmlmeext->TSFValue = le32_to_cpu(*(pbuf + 1));

 pmlmeext->TSFValue = pmlmeext->TSFValue << 32;

 pmlmeext->TSFValue |= le32_to_cpu(*pbuf);
}
