
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vnt_private {int dummy; } ;
struct TYPE_2__ {int beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int vnt_update_next_tbtt (struct vnt_private*,int ,int ) ;

__attribute__((used)) static void vnt_set_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
   u64 tsf)
{
 struct vnt_private *priv = hw->priv;

 vnt_update_next_tbtt(priv, tsf, vif->bss_conf.beacon_int);
}
