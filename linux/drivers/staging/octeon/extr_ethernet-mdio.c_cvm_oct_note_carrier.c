
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_ethernet {int netdev; int queue; int port; } ;
struct TYPE_4__ {scalar_t__ full_duplex; int speed; scalar_t__ link_up; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_helper_link_info_t ;


 int netdev_name (int ) ;
 int pr_notice_ratelimited (char*,int ,...) ;

void cvm_oct_note_carrier(struct octeon_ethernet *priv,
     cvmx_helper_link_info_t li)
{
 if (li.s.link_up) {
  pr_notice_ratelimited("%s: %u Mbps %s duplex, port %d, queue %d\n",
          netdev_name(priv->netdev), li.s.speed,
          (li.s.full_duplex) ? "Full" : "Half",
          priv->port, priv->queue);
 } else {
  pr_notice_ratelimited("%s: Link down\n",
          netdev_name(priv->netdev));
 }
}
