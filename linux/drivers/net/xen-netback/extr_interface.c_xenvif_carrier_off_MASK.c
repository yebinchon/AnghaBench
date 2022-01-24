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
struct xenvif {int /*<<< orphan*/  status; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIF_STATUS_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif*) ; 

void FUNC6(struct xenvif *vif)
{
	struct net_device *dev = vif->dev;

	FUNC2();
	if (FUNC4(VIF_STATUS_CONNECTED, &vif->status)) {
		FUNC0(dev); /* discard queued packets */
		if (FUNC1(dev))
			FUNC5(vif);
	}
	FUNC3();
}