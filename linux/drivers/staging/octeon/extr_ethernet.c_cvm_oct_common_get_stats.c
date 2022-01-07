
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tx_status ;
struct octeon_ethernet {scalar_t__ port; } ;
struct net_device_stats {int rx_dropped; int rx_frame_errors; int rx_crc_errors; int multicast; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
typedef int rx_status ;
struct TYPE_6__ {scalar_t__ dropped_packets; scalar_t__ fcs_align_err_packets; scalar_t__ inb_errors; scalar_t__ multicast_packets; scalar_t__ octets; scalar_t__ inb_octets; scalar_t__ packets; scalar_t__ inb_packets; } ;
typedef TYPE_1__ cvmx_pko_port_status_t ;
typedef TYPE_1__ cvmx_pip_port_status_t ;


 scalar_t__ CVMX_PIP_NUM_INPUT_PORTS ;
 int cvmx_pip_get_port_status (scalar_t__,int,TYPE_1__*) ;
 int cvmx_pko_get_port_status (scalar_t__,int,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 scalar_t__ octeon_is_simulation () ;

__attribute__((used)) static struct net_device_stats *cvm_oct_common_get_stats(struct net_device *dev)
{
 cvmx_pip_port_status_t rx_status;
 cvmx_pko_port_status_t tx_status;
 struct octeon_ethernet *priv = netdev_priv(dev);

 if (priv->port < CVMX_PIP_NUM_INPUT_PORTS) {
  if (octeon_is_simulation()) {

   memset(&rx_status, 0, sizeof(rx_status));
   memset(&tx_status, 0, sizeof(tx_status));
  } else {
   cvmx_pip_get_port_status(priv->port, 1, &rx_status);
   cvmx_pko_get_port_status(priv->port, 1, &tx_status);
  }

  dev->stats.rx_packets += rx_status.inb_packets;
  dev->stats.tx_packets += tx_status.packets;
  dev->stats.rx_bytes += rx_status.inb_octets;
  dev->stats.tx_bytes += tx_status.octets;
  dev->stats.multicast += rx_status.multicast_packets;
  dev->stats.rx_crc_errors += rx_status.inb_errors;
  dev->stats.rx_frame_errors += rx_status.fcs_align_err_packets;
  dev->stats.rx_dropped += rx_status.dropped_packets;
 }

 return &dev->stats;
}
