
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct wiphy {int dummy; } ;
struct wilc_priv {scalar_t__* wep_key_len; int * wep_key; TYPE_2__** wilc_ptk; TYPE_2__** wilc_gtk; } ;
struct wilc_vif {struct wilc_priv priv; } ;
struct wilc {TYPE_1__** vif; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* seq; struct TYPE_4__* key; } ;
struct TYPE_3__ {struct net_device* ndev; } ;


 int kfree (TYPE_2__*) ;
 int memset (int ,int ,scalar_t__) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_remove_wep_key (struct wilc_vif*,size_t) ;
 struct wilc* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int del_key(struct wiphy *wiphy, struct net_device *netdev,
     u8 key_index,
     bool pairwise,
     const u8 *mac_addr)
{
 struct wilc *wl = wiphy_priv(wiphy);
 struct wilc_vif *vif = netdev_priv(netdev);
 struct wilc_priv *priv = &vif->priv;

 if (netdev == wl->vif[0]->ndev) {
  if (priv->wilc_gtk[key_index]) {
   kfree(priv->wilc_gtk[key_index]->key);
   priv->wilc_gtk[key_index]->key = ((void*)0);
   kfree(priv->wilc_gtk[key_index]->seq);
   priv->wilc_gtk[key_index]->seq = ((void*)0);

   kfree(priv->wilc_gtk[key_index]);
   priv->wilc_gtk[key_index] = ((void*)0);
  }

  if (priv->wilc_ptk[key_index]) {
   kfree(priv->wilc_ptk[key_index]->key);
   priv->wilc_ptk[key_index]->key = ((void*)0);
   kfree(priv->wilc_ptk[key_index]->seq);
   priv->wilc_ptk[key_index]->seq = ((void*)0);
   kfree(priv->wilc_ptk[key_index]);
   priv->wilc_ptk[key_index] = ((void*)0);
  }
 }

 if (key_index <= 3 && priv->wep_key_len[key_index]) {
  memset(priv->wep_key[key_index], 0,
         priv->wep_key_len[key_index]);
  priv->wep_key_len[key_index] = 0;
  wilc_remove_wep_key(vif, key_index);
 }

 return 0;
}
