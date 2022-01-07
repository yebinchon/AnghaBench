
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {scalar_t__ undecorated_smoothed_pwdb; } ;
struct net_device {int dummy; } ;


 int DRIVER_RSSI ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int write_nic_byte (struct net_device*,int ,int ) ;

__attribute__((used)) static void dm_send_rssi_tofw(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);





 write_nic_byte(dev, DRIVER_RSSI, (u8)priv->undecorated_smoothed_pwdb);
}
