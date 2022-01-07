
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct r8192_priv {scalar_t__ rf_type; } ;
struct net_device {int dummy; } ;


 scalar_t__ RF90_PATH_A ;
 scalar_t__ RF90_PATH_B ;
 scalar_t__ RF90_PATH_C ;
 scalar_t__ RF90_PATH_D ;
 scalar_t__ RF_1T2R ;
 scalar_t__ RF_2T4R ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

u8 rtl8192_phy_CheckIsLegalRFPath(struct net_device *dev, u32 e_rfpath)
{
 u8 ret = 1;
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (priv->rf_type == RF_2T4R) {
  ret = 0;
 } else if (priv->rf_type == RF_1T2R) {
  if (e_rfpath == RF90_PATH_A || e_rfpath == RF90_PATH_B)
   ret = 1;
  else if (e_rfpath == RF90_PATH_C || e_rfpath == RF90_PATH_D)
   ret = 0;
 }
 return ret;
}
