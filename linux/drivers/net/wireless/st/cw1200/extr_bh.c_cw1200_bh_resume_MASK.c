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
struct cw1200_common {int /*<<< orphan*/  bh_suspend; scalar_t__ bh_error; int /*<<< orphan*/  bh_evt_wq; int /*<<< orphan*/  bh_wq; TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CW1200_BH_RESUME ; 
 scalar_t__ CW1200_BH_RESUMED ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct cw1200_common *priv)
{
	FUNC2("[BH] resume.\n");
	if (priv->bh_error) {
		FUNC5(priv->hw->wiphy, "BH error -- can't resume\n");
		return -EINVAL;
	}

	FUNC1(&priv->bh_suspend, CW1200_BH_RESUME);
	FUNC4(&priv->bh_wq);
	return FUNC3(priv->bh_evt_wq, priv->bh_error ||
		(CW1200_BH_RESUMED == FUNC0(&priv->bh_suspend)),
		1 * HZ) ? 0 : -ETIMEDOUT;
}