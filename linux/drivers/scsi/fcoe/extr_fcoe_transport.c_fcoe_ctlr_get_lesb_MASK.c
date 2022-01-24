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
struct fcoe_ctlr_device {int /*<<< orphan*/  lesb; } ;
struct fcoe_ctlr {int /*<<< orphan*/  lp; } ;
struct fc_els_lesb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fc_els_lesb*,struct net_device*) ; 
 struct fcoe_ctlr* FUNC1 (struct fcoe_ctlr_device*) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct fcoe_ctlr_device *ctlr_dev)
{
	struct fcoe_ctlr *fip = FUNC1(ctlr_dev);
	struct net_device *netdev = FUNC2(fip->lp);
	struct fc_els_lesb *fc_lesb;

	fc_lesb = (struct fc_els_lesb *)(&ctlr_dev->lesb);
	FUNC0(fip->lp, fc_lesb, netdev);
}