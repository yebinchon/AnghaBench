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
struct net_device {int flags; } ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
struct fc_lport {int dummy; } ;
struct bnx2fc_interface {struct bnx2fc_hba* hba; } ;
struct bnx2fc_hba {int /*<<< orphan*/  adapter_state; struct net_device* phys_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_STATE_LINK_DOWN ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fcoe_port* FUNC1 (struct fc_lport*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fc_lport *lport)
{
	struct fcoe_port *port = FUNC1(lport);
	struct bnx2fc_interface *interface = port->priv;
	struct bnx2fc_hba *hba = interface->hba;
	struct net_device *dev = hba->phys_dev;
	int rc = 0;

	if ((dev->flags & IFF_UP) && FUNC2(dev))
		FUNC0(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
	else {
		FUNC3(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
		rc = -1;
	}
	return rc;
}