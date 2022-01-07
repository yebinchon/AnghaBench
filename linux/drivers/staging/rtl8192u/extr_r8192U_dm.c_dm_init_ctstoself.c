
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int bCTSToSelfEnable; int CTSToSelfTH; } ;


 int CTS_TO_SELF_TH_VAL ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_init_ctstoself(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 priv->ieee80211->bCTSToSelfEnable = 1;
 priv->ieee80211->CTSToSelfTH = CTS_TO_SELF_TH_VAL;
}
