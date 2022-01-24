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
struct TYPE_4__ {int /*<<< orphan*/  work; int /*<<< orphan*/  lock; scalar_t__ direct_probe; } ;
struct cw1200_common {TYPE_2__ scan; TYPE_1__* hw; int /*<<< orphan*/  clear_recent_scan_work; int /*<<< orphan*/  workqueue; } ;
struct TYPE_3__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 

__attribute__((used)) static void FUNC6(struct cw1200_common *priv)
{
	FUNC2(priv->workqueue, &priv->clear_recent_scan_work, HZ);
	if (priv->scan.direct_probe) {
		FUNC4(priv->hw->wiphy, "[SCAN] Direct probe complete.\n");
		FUNC0(priv);
		priv->scan.direct_probe = 0;
		FUNC3(&priv->scan.lock);
		FUNC5(priv);
	} else {
		FUNC1(&priv->scan.work);
	}
}