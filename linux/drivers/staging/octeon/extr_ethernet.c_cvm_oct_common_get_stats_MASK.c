#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tx_status ;
struct octeon_ethernet {scalar_t__ port; } ;
struct net_device_stats {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
typedef  int /*<<< orphan*/  rx_status ;
struct TYPE_6__ {scalar_t__ dropped_packets; scalar_t__ fcs_align_err_packets; scalar_t__ inb_errors; scalar_t__ multicast_packets; scalar_t__ octets; scalar_t__ inb_octets; scalar_t__ packets; scalar_t__ inb_packets; } ;
typedef  TYPE_1__ cvmx_pko_port_status_t ;
typedef  TYPE_1__ cvmx_pip_port_status_t ;

/* Variables and functions */
 scalar_t__ CVMX_PIP_NUM_INPUT_PORTS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct octeon_ethernet* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static struct net_device_stats *FUNC5(struct net_device *dev)
{
	cvmx_pip_port_status_t rx_status;
	cvmx_pko_port_status_t tx_status;
	struct octeon_ethernet *priv = FUNC3(dev);

	if (priv->port < CVMX_PIP_NUM_INPUT_PORTS) {
		if (FUNC4()) {
			/* The simulator doesn't support statistics */
			FUNC2(&rx_status, 0, sizeof(rx_status));
			FUNC2(&tx_status, 0, sizeof(tx_status));
		} else {
			FUNC0(priv->port, 1, &rx_status);
			FUNC1(priv->port, 1, &tx_status);
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