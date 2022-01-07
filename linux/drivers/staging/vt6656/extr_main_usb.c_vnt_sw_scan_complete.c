
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int vnt_update_pre_ed_threshold (struct vnt_private*,int) ;

__attribute__((used)) static void vnt_sw_scan_complete(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct vnt_private *priv = hw->priv;


 vnt_update_pre_ed_threshold(priv, 0);
}
