
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct wilc_vif {TYPE_1__ ack_filter; } ;



void wilc_enable_tcp_ack_filter(struct wilc_vif *vif, bool value)
{
 vif->ack_filter.enabled = value;
}
