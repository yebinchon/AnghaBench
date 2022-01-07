
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_ext_info {scalar_t__ HT_enable; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int WIRELESS_11B ;
 int WIRELESS_11BG ;
 int WIRELESS_11G ;
 int WIRELESS_11_24N ;
 scalar_t__ cckrates_included (unsigned char*,int) ;
 scalar_t__ cckratesonly_included (unsigned char*,int) ;

u8 judge_network_type(struct adapter *padapter, unsigned char *rate, int ratelen)
{
 u8 network_type = 0;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 if (pmlmeinfo->HT_enable)
  network_type = WIRELESS_11_24N;

 if (cckratesonly_included(rate, ratelen))
  network_type |= WIRELESS_11B;
 else if (cckrates_included(rate, ratelen))
  network_type |= WIRELESS_11BG;
 else
  network_type |= WIRELESS_11G;

 return network_type;
}
