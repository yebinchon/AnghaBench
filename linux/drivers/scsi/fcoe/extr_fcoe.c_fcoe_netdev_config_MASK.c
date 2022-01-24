#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct net_device {int mtu; int features; } ;
struct fcoe_port {int /*<<< orphan*/  timer; scalar_t__ fcoe_pending_queue_active; int /*<<< orphan*/  fcoe_pending_queue; struct fcoe_interface* priv; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_hdr {int dummy; } ;
struct fcoe_ctlr {int /*<<< orphan*/  ctl_src_addr; } ;
struct fcoe_crc_eof {int dummy; } ;
struct fc_lport {int /*<<< orphan*/  vport; scalar_t__ vlan; } ;

/* Variables and functions */
 int EINVAL ; 
 int FCOE_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  NETDEV_FCOE_WWNN ; 
 int /*<<< orphan*/  NETDEV_FCOE_WWPN ; 
 int NETIF_F_FCOE_MTU ; 
 scalar_t__ FUNC1 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*,struct net_device*) ; 
 int /*<<< orphan*/  fcoe_queue_timer ; 
 struct fcoe_ctlr* FUNC7 (struct fcoe_interface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 struct fcoe_port* FUNC10 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct fc_lport *lport, struct net_device *netdev)
{
	u32 mfs;
	u64 wwnn, wwpn;
	struct fcoe_interface *fcoe;
	struct fcoe_ctlr *ctlr;
	struct fcoe_port *port;

	/* Setup lport private data to point to fcoe softc */
	port = FUNC10(lport);
	fcoe = port->priv;
	ctlr = FUNC7(fcoe);

	/* Figure out the VLAN ID, if any */
	if (FUNC9(netdev))
		lport->vlan = FUNC13(netdev);
	else
		lport->vlan = 0;

	/*
	 * Determine max frame size based on underlying device and optional
	 * user-configured limit.  If the MFS is too low, fcoe_link_ok()
	 * will return 0, so do this first.
	 */
	mfs = netdev->mtu;
	if (netdev->features & NETIF_F_FCOE_MTU) {
		mfs = FCOE_MTU;
		FUNC0(netdev, "Supports FCOE_MTU of %d bytes\n", mfs);
	}
	mfs -= (sizeof(struct fcoe_hdr) + sizeof(struct fcoe_crc_eof));
	if (FUNC1(lport, mfs))
		return -EINVAL;

	/* offload features support */
	FUNC6(lport, netdev);

	FUNC11(&port->fcoe_pending_queue);
	port->fcoe_pending_queue_active = 0;
	FUNC12(&port->timer, fcoe_queue_timer, 0);

	FUNC5(lport);

	if (!lport->vport) {
		if (FUNC4(netdev, &wwnn, NETDEV_FCOE_WWNN))
			wwnn = FUNC8(ctlr->ctl_src_addr, 1, 0);
		FUNC2(lport, wwnn);
		if (FUNC4(netdev, &wwpn, NETDEV_FCOE_WWPN))
			wwpn = FUNC8(ctlr->ctl_src_addr,
						 2, 0);
		FUNC3(lport, wwpn);
	}

	return 0;
}