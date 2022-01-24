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
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  wakeup_request; } ;
struct ks_wlan_private {int sleep_mode; TYPE_1__ sleepstatus; int /*<<< orphan*/  wakeup_count; int /*<<< orphan*/  last_wakeup; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAKEUP_REG ; 
 int /*<<< orphan*/  WAKEUP_REQ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct ks_wlan_private *priv)
{
	int ret;

	/* clear request */
	FUNC1(&priv->sleepstatus.wakeup_request, 0);

	if (FUNC0(&priv->sleepstatus.status) == 1) {
		ret = FUNC2(priv, WAKEUP_REG, WAKEUP_REQ);
		if (ret) {
			FUNC3(priv->net_dev, "write WAKEUP_REG\n");
			goto set_sleep_mode;
		}
		FUNC1(&priv->sleepstatus.status, 0);
		priv->last_wakeup = jiffies;
		++priv->wakeup_count;
	}

set_sleep_mode:
	priv->sleep_mode = FUNC0(&priv->sleepstatus.status);
}