
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ en; } ;
union cvmx_gmxx_prtx_cfg {int u64; TYPE_1__ s; } ;
struct octeon_ethernet {int port; scalar_t__ last_link; int * poll; } ;
struct net_device {scalar_t__ phydev; } ;
struct TYPE_6__ {scalar_t__ u64; } ;
typedef TYPE_2__ cvmx_helper_link_info_t ;


 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 int cvm_oct_note_carrier (struct octeon_ethernet*,TYPE_2__) ;
 int cvmx_helper_link_set (int ,TYPE_2__) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;

int cvm_oct_common_stop(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 int interface = INTERFACE(priv->port);
 cvmx_helper_link_info_t link_info;
 union cvmx_gmxx_prtx_cfg gmx_cfg;
 int index = INDEX(priv->port);

 gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
 gmx_cfg.s.en = 0;
 cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);

 priv->poll = ((void*)0);

 if (dev->phydev)
  phy_disconnect(dev->phydev);

 if (priv->last_link) {
  link_info.u64 = 0;
  priv->last_link = 0;

  cvmx_helper_link_set(priv->port, link_info);
  cvm_oct_note_carrier(priv, link_info);
 }
 return 0;
}
