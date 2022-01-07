
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bcst; int mcst; int cam_mode; } ;
union cvmx_gmxx_rxx_adr_ctl {int u64; TYPE_1__ s; } ;
union cvmx_gmxx_prtx_cfg {unsigned long long u64; } ;
struct octeon_ethernet {int port; } ;
struct net_device {int flags; } ;


 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int CVMX_GMXX_RXX_ADR_CAM_EN (int,int) ;
 int CVMX_GMXX_RXX_ADR_CTL (int,int) ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 scalar_t__ cvmx_helper_interface_get_mode (int) ;
 unsigned long long cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;
 int netdev_mc_empty (struct net_device*) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cvm_oct_common_set_multicast_list(struct net_device *dev)
{
 union cvmx_gmxx_prtx_cfg gmx_cfg;
 struct octeon_ethernet *priv = netdev_priv(dev);
 int interface = INTERFACE(priv->port);

 if ((interface < 2) &&
     (cvmx_helper_interface_get_mode(interface) !=
  CVMX_HELPER_INTERFACE_MODE_SPI)) {
  union cvmx_gmxx_rxx_adr_ctl control;
  int index = INDEX(priv->port);

  control.u64 = 0;
  control.s.bcst = 1;

  if (!netdev_mc_empty(dev) || (dev->flags & IFF_ALLMULTI) ||
      (dev->flags & IFF_PROMISC))

   control.s.mcst = 2;
  else

   control.s.mcst = 1;

  if (dev->flags & IFF_PROMISC)




   control.s.cam_mode = 0;
  else

   control.s.cam_mode = 1;

  gmx_cfg.u64 =
      cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
  cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
          gmx_cfg.u64 & ~1ull);

  cvmx_write_csr(CVMX_GMXX_RXX_ADR_CTL(index, interface),
          control.u64);
  if (dev->flags & IFF_PROMISC)
   cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN
           (index, interface), 0);
  else
   cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN
           (index, interface), 1);

  cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
          gmx_cfg.u64);
 }
}
