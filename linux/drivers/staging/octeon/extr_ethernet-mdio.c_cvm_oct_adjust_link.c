
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct octeon_ethernet {scalar_t__ last_link; int port; int (* poll ) (struct net_device*) ;scalar_t__ link_info; } ;
struct net_device {TYPE_2__* phydev; } ;
struct TYPE_6__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_8__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_helper_link_info_t ;
struct TYPE_7__ {scalar_t__ link; int speed; scalar_t__ duplex; } ;


 int cvm_oct_note_carrier (struct octeon_ethernet*,TYPE_3__) ;
 int cvmx_helper_link_set (int ,TYPE_3__) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;

void cvm_oct_adjust_link(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 cvmx_helper_link_info_t link_info;

 link_info.u64 = 0;
 link_info.s.link_up = dev->phydev->link ? 1 : 0;
 link_info.s.full_duplex = dev->phydev->duplex ? 1 : 0;
 link_info.s.speed = dev->phydev->speed;
 priv->link_info = link_info.u64;




 if (priv->poll)
  priv->poll(dev);

 if (priv->last_link != dev->phydev->link) {
  priv->last_link = dev->phydev->link;
  cvmx_helper_link_set(priv->port, link_info);
  cvm_oct_note_carrier(priv, link_info);
 }
}
