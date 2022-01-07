
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int probeResponder; } ;
struct cw1200_common {TYPE_1__ rx_filter; } ;


 int wsm_set_rx_filter (struct cw1200_common*,TYPE_1__*) ;

int wsm_set_probe_responder(struct cw1200_common *priv, bool enable)
{
 priv->rx_filter.probeResponder = enable;
 return wsm_set_rx_filter(priv, &priv->rx_filter);
}
