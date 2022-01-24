#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xenvif {TYPE_1__* dev; int /*<<< orphan*/  status; int /*<<< orphan*/  can_sg; } ;
struct TYPE_4__ {scalar_t__ mtu; } ;

/* Variables and functions */
 scalar_t__ ETH_DATA_LEN ; 
 int /*<<< orphan*/  VIF_STATUS_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xenvif*) ; 

void FUNC7(struct xenvif *vif)
{
	FUNC3();
	if (!vif->can_sg && vif->dev->mtu > ETH_DATA_LEN)
		FUNC0(vif->dev, ETH_DATA_LEN);
	FUNC1(vif->dev);
	FUNC5(VIF_STATUS_CONNECTED, &vif->status);
	if (FUNC2(vif->dev))
		FUNC6(vif);
	FUNC4();
}