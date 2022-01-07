
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_ext_priv {unsigned char* datarate; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 unsigned char IEEE80211_BASIC_RATE_MASK ;
 int NumRates ;
 int is_basicrate (struct adapter*,unsigned char) ;
 unsigned char ratetbl_val_2wifirate (unsigned char) ;

unsigned int ratetbl2rateset(struct adapter *padapter, unsigned char *rateset)
{
 int i;
 unsigned char rate;
 unsigned int len = 0;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 for (i = 0; i < NumRates; i++) {
  rate = pmlmeext->datarate[i];

  switch (rate) {
  case 0xff:
   return len;

  case 0xfe:
   continue;

  default:
   rate = ratetbl_val_2wifirate(rate);

   if (is_basicrate(padapter, rate) == 1)
    rate |= IEEE80211_BASIC_RATE_MASK;

   rateset[len] = rate;
   len++;
   break;
  }
 }
 return len;
}
