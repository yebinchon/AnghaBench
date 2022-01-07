
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {int qos_activate; TYPE_3__* ieee80211; } ;
struct ieee80211_qos_parameters {int dummy; } ;
struct TYPE_8__ {int active; int supported; scalar_t__ old_param_count; scalar_t__ param_count; } ;
struct ieee80211_network {int flags; TYPE_4__ qos_data; } ;
struct TYPE_5__ {int parameters; } ;
struct TYPE_6__ {TYPE_1__ qos_data; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ iw_mode; TYPE_2__ current_network; } ;


 int COMP_QOS ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IW_MODE_INFRA ;
 int NETWORK_HAS_QOS_MASK ;
 int NETWORK_HAS_QOS_PARAMETERS ;
 int RT_TRACE (int ,char*) ;
 int def_qos_parameters ;
 int memcpy (int *,int *,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static int rtl8192_qos_handle_probe_response(struct r8192_priv *priv,
          int active_network,
          struct ieee80211_network *network)
{
 int ret = 0;
 u32 size = sizeof(struct ieee80211_qos_parameters);

 if (priv->ieee80211->state != IEEE80211_LINKED)
  return ret;

 if (priv->ieee80211->iw_mode != IW_MODE_INFRA)
  return ret;

 if (network->flags & NETWORK_HAS_QOS_MASK) {
  if (active_network &&
      (network->flags & NETWORK_HAS_QOS_PARAMETERS))
   network->qos_data.active = network->qos_data.supported;

  if ((network->qos_data.active == 1) && (active_network == 1) &&
      (network->flags & NETWORK_HAS_QOS_PARAMETERS) &&
      (network->qos_data.old_param_count !=
       network->qos_data.param_count)) {
   network->qos_data.old_param_count =
    network->qos_data.param_count;
   schedule_work(&priv->qos_activate);
   RT_TRACE(COMP_QOS,
     "QoS parameters change call qos_activate\n");
  }
 } else {
  memcpy(&priv->ieee80211->current_network.qos_data.parameters,
         &def_qos_parameters, size);

  if ((network->qos_data.active == 1) && (active_network == 1)) {
   schedule_work(&priv->qos_activate);
   RT_TRACE(COMP_QOS,
     "QoS was disabled call qos_activate\n");
  }
  network->qos_data.active = 0;
  network->qos_data.supported = 0;
 }

 return 0;
}
