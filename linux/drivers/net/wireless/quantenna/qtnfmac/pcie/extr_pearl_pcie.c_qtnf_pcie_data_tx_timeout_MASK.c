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
struct TYPE_2__ {int /*<<< orphan*/  reclaim_tq; } ;
struct qtnf_pcie_pearl_state {TYPE_1__ base; } ;
struct qtnf_bus {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct qtnf_bus *bus, struct net_device *ndev)
{
	struct qtnf_pcie_pearl_state *ps = (void *)FUNC0(bus);

	FUNC1(&ps->base.reclaim_tq);
}