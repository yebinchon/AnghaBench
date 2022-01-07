
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {scalar_t__ join_status; } ;


 scalar_t__ CW1200_JOIN_STATUS_MONITOR ;
 scalar_t__ CW1200_JOIN_STATUS_PASSIVE ;
 int cw1200_disable_listening (struct cw1200_common*) ;
 int cw1200_enable_listening (struct cw1200_common*) ;
 int wsm_set_probe_responder (struct cw1200_common*,int) ;

void cw1200_update_listening(struct cw1200_common *priv, bool enabled)
{
 if (enabled) {
  if (priv->join_status == CW1200_JOIN_STATUS_PASSIVE) {
   if (!cw1200_enable_listening(priv))
    priv->join_status = CW1200_JOIN_STATUS_MONITOR;
   wsm_set_probe_responder(priv, 1);
  }
 } else {
  if (priv->join_status == CW1200_JOIN_STATUS_MONITOR) {
   if (!cw1200_disable_listening(priv))
    priv->join_status = CW1200_JOIN_STATUS_PASSIVE;
   wsm_set_probe_responder(priv, 0);
  }
 }
}
