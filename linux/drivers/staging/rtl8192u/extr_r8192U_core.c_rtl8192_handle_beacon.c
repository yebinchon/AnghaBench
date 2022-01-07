
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int update_beacon_wq; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_beacon {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_qos_handle_probe_response (struct r8192_priv*,int,struct ieee80211_network*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int rtl8192_handle_beacon(struct net_device *dev,
     struct ieee80211_beacon *beacon,
     struct ieee80211_network *network)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 rtl8192_qos_handle_probe_response(priv, 1, network);
 schedule_delayed_work(&priv->update_beacon_wq, 0);
 return 0;
}
