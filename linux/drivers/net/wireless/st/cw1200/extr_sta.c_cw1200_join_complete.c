
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int join_pending; scalar_t__ mode; int join_status; int vif; int listening; scalar_t__ join_complete_status; } ;


 int CW1200_JOIN_STATUS_IBSS ;
 int CW1200_JOIN_STATUS_PASSIVE ;
 int CW1200_JOIN_STATUS_PRE_STA ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int cw1200_do_unjoin (struct cw1200_common*) ;
 int cw1200_update_listening (struct cw1200_common*,int ) ;
 int ieee80211_connection_loss (int ) ;
 int pr_debug (char*,scalar_t__) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

__attribute__((used)) static void cw1200_join_complete(struct cw1200_common *priv)
{
 pr_debug("[STA] Join complete (%d)\n", priv->join_complete_status);

 priv->join_pending = 0;
 if (priv->join_complete_status) {
  priv->join_status = CW1200_JOIN_STATUS_PASSIVE;
  cw1200_update_listening(priv, priv->listening);
  cw1200_do_unjoin(priv);
  ieee80211_connection_loss(priv->vif);
 } else {
  if (priv->mode == NL80211_IFTYPE_ADHOC)
   priv->join_status = CW1200_JOIN_STATUS_IBSS;
  else
   priv->join_status = CW1200_JOIN_STATUS_PRE_STA;
 }
 wsm_unlock_tx(priv);
}
