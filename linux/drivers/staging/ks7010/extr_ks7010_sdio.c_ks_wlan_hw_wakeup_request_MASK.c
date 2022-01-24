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
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct ks_wlan_private {int /*<<< orphan*/  wakeup_count; int /*<<< orphan*/  last_wakeup; int /*<<< orphan*/  net_dev; TYPE_1__ psstatus; } ;

/* Variables and functions */
 scalar_t__ PS_SNOOZE ; 
 int /*<<< orphan*/  WAKEUP_REG ; 
 int /*<<< orphan*/  WAKEUP_REQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC1 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct ks_wlan_private *priv)
{
	int ret;

	if (FUNC0(&priv->psstatus.status) == PS_SNOOZE) {
		ret = FUNC1(priv, WAKEUP_REG, WAKEUP_REQ);
		if (ret)
			FUNC2(priv->net_dev, "write WAKEUP_REG\n");

		priv->last_wakeup = jiffies;
		++priv->wakeup_count;
	}
}