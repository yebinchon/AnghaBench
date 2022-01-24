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
struct qtnf_vif {int /*<<< orphan*/  vifid; TYPE_1__* mac; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qtnf_vif*,int) ; 
 struct qtnf_vif* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *ndev, bool up)
{
	struct qtnf_vif *vif = FUNC2(ndev);

	if (FUNC1(vif, up))
		FUNC0("failed to send %s command to VIF%u.%u\n",
		       up ? "UP" : "DOWN", vif->mac->macid, vif->vifid);
}