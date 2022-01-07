
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {scalar_t__ mode; int Regdot11HTOperationalRateSet; int RegHTSuppRateSet; int Regdot11TxHTOperationalRateSet; } ;
struct r8192_priv {struct rtllib_device* rtllib; } ;


 scalar_t__ WIRELESS_MODE_N_24G ;
 scalar_t__ WIRELESS_MODE_N_5G ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void _rtl92e_refresh_support_rate(struct r8192_priv *priv)
{
 struct rtllib_device *ieee = priv->rtllib;

 if (ieee->mode == WIRELESS_MODE_N_24G ||
     ieee->mode == WIRELESS_MODE_N_5G) {
  memcpy(ieee->Regdot11HTOperationalRateSet,
         ieee->RegHTSuppRateSet, 16);
  memcpy(ieee->Regdot11TxHTOperationalRateSet,
         ieee->RegHTSuppRateSet, 16);

 } else {
  memset(ieee->Regdot11HTOperationalRateSet, 0, 16);
 }
}
