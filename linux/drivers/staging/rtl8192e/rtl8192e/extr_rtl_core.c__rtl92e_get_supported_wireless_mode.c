
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int rf_chip; } ;
struct net_device {int dummy; } ;







 int WIRELESS_MODE_A ;
 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_G ;
 int WIRELESS_MODE_N_24G ;
 int WIRELESS_MODE_N_5G ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static u8 _rtl92e_get_supported_wireless_mode(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 u8 ret = 0;

 switch (priv->rf_chip) {
 case 131:
 case 130:
 case 132:
 case 128:
  ret = (WIRELESS_MODE_N_24G | WIRELESS_MODE_G | WIRELESS_MODE_B);
  break;
 case 129:
  ret = (WIRELESS_MODE_A | WIRELESS_MODE_N_5G);
  break;
 default:
  ret = WIRELESS_MODE_B;
  break;
 }
 return ret;
}
