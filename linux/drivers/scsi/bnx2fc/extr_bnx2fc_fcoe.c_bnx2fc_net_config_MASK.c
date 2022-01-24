#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct fcoe_port {int /*<<< orphan*/  timer; scalar_t__ fcoe_pending_queue_active; int /*<<< orphan*/  fcoe_pending_queue; struct bnx2fc_interface* priv; } ;
struct fcoe_ctlr {int /*<<< orphan*/  ctl_src_addr; } ;
struct fc_lport {int /*<<< orphan*/  vport; } ;
struct bnx2fc_interface {struct bnx2fc_hba* hba; } ;
struct bnx2fc_hba {TYPE_2__* phys_dev; } ;
struct TYPE_4__ {TYPE_1__* ethtool_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  get_pauseparam; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNX2FC_MFS ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NETDEV_FCOE_WWNN ; 
 int /*<<< orphan*/  NETDEV_FCOE_WWPN ; 
 struct fcoe_ctlr* FUNC1 (struct bnx2fc_interface*) ; 
 scalar_t__ FUNC2 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*) ; 
 int /*<<< orphan*/  fcoe_queue_timer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct fcoe_port* FUNC8 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct fc_lport *lport, struct net_device *netdev)
{
	struct bnx2fc_hba *hba;
	struct bnx2fc_interface *interface;
	struct fcoe_ctlr *ctlr;
	struct fcoe_port *port;
	u64 wwnn, wwpn;

	port = FUNC8(lport);
	interface = port->priv;
	ctlr = FUNC1(interface);
	hba = interface->hba;

	/* require support for get_pauseparam ethtool op. */
	if (!hba->phys_dev->ethtool_ops ||
	    !hba->phys_dev->ethtool_ops->get_pauseparam)
		return -EOPNOTSUPP;

	if (FUNC2(lport, BNX2FC_MFS))
		return -EINVAL;

	FUNC9(&port->fcoe_pending_queue);
	port->fcoe_pending_queue_active = 0;
	FUNC10(&port->timer, fcoe_queue_timer, 0);

	FUNC6(lport);

	if (!lport->vport) {
		if (FUNC5(netdev, &wwnn, NETDEV_FCOE_WWNN))
			wwnn = FUNC7(ctlr->ctl_src_addr,
						 1, 0);
		FUNC0(lport, "WWNN = 0x%llx\n", wwnn);
		FUNC3(lport, wwnn);

		if (FUNC5(netdev, &wwpn, NETDEV_FCOE_WWPN))
			wwpn = FUNC7(ctlr->ctl_src_addr,
						 2, 0);

		FUNC0(lport, "WWPN = 0x%llx\n", wwpn);
		FUNC4(lport, wwpn);
	}

	return 0;
}