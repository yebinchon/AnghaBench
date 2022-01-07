
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {scalar_t__ sc_nvifs; struct ieee80211_vif** vifs; struct rsi_common* priv; } ;
struct rsi_common {int mutex; } ;
struct ieee80211_vif {int addr; int type; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;
typedef enum opmode { ____Placeholder_opmode } opmode ;


 int ERR_ZONE ;
 int INFO_ZONE ;
 int RSI_MAX_VIFS ;
 int RSI_OPMODE_UNSUPPORTED ;
 int VAP_DELETE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsi_dbg (int ,char*,...) ;
 int rsi_map_intf_mode (int ) ;
 int rsi_set_vap_capabilities (struct rsi_common*,int,int ,int,int ) ;

__attribute__((used)) static void rsi_mac80211_remove_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;
 enum opmode opmode;
 int i;

 rsi_dbg(INFO_ZONE, "Remove Interface Called\n");

 mutex_lock(&common->mutex);

 if (adapter->sc_nvifs <= 0) {
  mutex_unlock(&common->mutex);
  return;
 }

 opmode = rsi_map_intf_mode(vif->type);
 if (opmode == RSI_OPMODE_UNSUPPORTED) {
  rsi_dbg(ERR_ZONE, "Opmode error : %d\n", opmode);
  mutex_unlock(&common->mutex);
  return;
 }
 for (i = 0; i < RSI_MAX_VIFS; i++) {
  if (!adapter->vifs[i])
   continue;
  if (vif == adapter->vifs[i]) {
   rsi_set_vap_capabilities(common, opmode, vif->addr,
       i, VAP_DELETE);
   adapter->sc_nvifs--;
   adapter->vifs[i] = ((void*)0);
  }
 }
 mutex_unlock(&common->mutex);
}
