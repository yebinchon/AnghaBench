
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee80211_device {void* priv; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void *ieee80211_priv(struct net_device *dev)
{
 return ((struct ieee80211_device *)netdev_priv(dev))->priv;
}
