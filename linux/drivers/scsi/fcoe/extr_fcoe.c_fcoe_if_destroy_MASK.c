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
struct net_device {int dummy; } ;
struct fcoe_port {int /*<<< orphan*/  data_src_addr; int /*<<< orphan*/  timer; struct fcoe_interface* priv; } ;
struct fcoe_interface {struct net_device* netdev; } ;
struct fc_lport {int /*<<< orphan*/  host; scalar_t__ vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC10 (struct fcoe_interface*) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct fcoe_port* FUNC13 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static void FUNC17(struct fc_lport *lport)
{
	struct fcoe_port *port = FUNC13(lport);
	struct fcoe_interface *fcoe = port->priv;
	struct net_device *netdev = fcoe->netdev;

	FUNC0(netdev, "Destroying interface\n");

	/* Logout of the fabric */
	FUNC4(lport);

	/* Cleanup the fc_lport */
	FUNC6(lport);

	/* Stop the transmit retry timer */
	FUNC1(&port->timer);

	/* Free existing transmit skbs */
	FUNC9(lport);

	if (!FUNC12(port->data_src_addr))
		FUNC2(netdev, port->data_src_addr);
	if (lport->vport)
		FUNC16();
	else
		FUNC10(fcoe);

	/* Free queued packets for the per-CPU receive threads */
	FUNC11(lport);

	/* Detach from the scsi-ml */
	FUNC8(lport->host);
	FUNC15(lport->host);

	/* Destroy lport scsi_priv */
	FUNC5(lport);

	/* There are no more rports or I/O, free the EM */
	FUNC3(lport);

	/* Free memory used by statistical counters */
	FUNC7(lport);

	/*
	 * Release the Scsi_Host for vport but hold on to
	 * master lport until it fcoe interface fully cleaned-up.
	 */
	if (lport->vport)
		FUNC14(lport->host);
}