
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {int rf_type; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_device {int* dot11HTOperationalRateSet; int mode; TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ bCurShortGI20MHz; scalar_t__ bCurTxBW40MHz; scalar_t__ bCurShortGI40MHz; int PeerMimoPs; } ;







 int MIMO_PS_STATIC ;
 scalar_t__ RATR0 ;
 int RF_1T2R ;
 int UFWP ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_config_rate (struct net_device*,int*) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,scalar_t__,int) ;

__attribute__((used)) static void rtl8192_update_ratr_table(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device *ieee = priv->ieee80211;
 u8 *pMcsRate = ieee->dot11HTOperationalRateSet;
 u32 ratr_value = 0;
 u8 rate_index = 0;

 rtl8192_config_rate(dev, (u16 *)(&ratr_value));
 ratr_value |= (*(u16 *)(pMcsRate)) << 12;
 switch (ieee->mode) {
 case 132:
  ratr_value &= 0x00000FF0;
  break;
 case 131:
  ratr_value &= 0x0000000F;
  break;
 case 130:
  ratr_value &= 0x00000FF7;
  break;
 case 129:
 case 128:
  if (ieee->pHTInfo->PeerMimoPs == MIMO_PS_STATIC) {
   ratr_value &= 0x0007F007;
  } else {
   if (priv->rf_type == RF_1T2R)
    ratr_value &= 0x000FF007;
   else
    ratr_value &= 0x0F81F007;
  }
  break;
 default:
  break;
 }
 ratr_value &= 0x0FFFFFFF;
 if (ieee->pHTInfo->bCurTxBW40MHz && ieee->pHTInfo->bCurShortGI40MHz)
  ratr_value |= 0x80000000;
 else if (!ieee->pHTInfo->bCurTxBW40MHz &&
   ieee->pHTInfo->bCurShortGI20MHz)
  ratr_value |= 0x80000000;
 write_nic_dword(dev, RATR0 + rate_index * 4, ratr_value);
 write_nic_byte(dev, UFWP, 1);
}
