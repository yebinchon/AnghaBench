#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct fcoe_interface {struct net_device* netdev; } ;
struct fcoe_ctlr {TYPE_1__* lp; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr*) ; 
 struct fcoe_ctlr* FUNC2 (struct fcoe_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fcoe_interface *fcoe)
{
	struct net_device *netdev = fcoe->netdev;
	struct fcoe_ctlr *fip = FUNC2(fcoe);

	/* Release the self-reference taken during fcoe_interface_create() */
	/* tear-down the FCoE controller */
	FUNC1(fip);
	FUNC4(fip->lp->host);
	FUNC0(netdev);
	FUNC3(THIS_MODULE);
}