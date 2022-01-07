
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_assoc_response_frame {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_qos_association_resp (struct r8192_priv*,struct ieee80211_network*) ;

__attribute__((used)) static int rtl8192_handle_assoc_response(
  struct net_device *dev,
  struct ieee80211_assoc_response_frame *resp,
  struct ieee80211_network *network)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 rtl8192_qos_association_resp(priv, network);
 return 0;
}
