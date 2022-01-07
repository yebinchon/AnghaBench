
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnt_private {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int CARDbGetCurrentTSF (struct vnt_private*,int *) ;

__attribute__((used)) static u64 vnt_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct vnt_private *priv = hw->priv;
 u64 tsf;

 CARDbGetCurrentTSF(priv, &tsf);

 return tsf;
}
