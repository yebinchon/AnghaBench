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
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  doze_request; } ;
struct ks_wlan_private {TYPE_1__ sleepstatus; scalar_t__ sleep_mode; int /*<<< orphan*/  last_doze; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCR_B_DOZE ; 
 int /*<<< orphan*/  GCR_B_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct ks_wlan_private *priv)
{
	int ret;

	/* clear request */
	FUNC1(&priv->sleepstatus.doze_request, 0);

	if (FUNC0(&priv->sleepstatus.status) == 0) {
		ret = FUNC2(priv, GCR_B_REG, GCR_B_DOZE);
		if (ret) {
			FUNC3(priv->net_dev, "write GCR_B_REG\n");
			goto set_sleep_mode;
		}
		FUNC1(&priv->sleepstatus.status, 1);
		priv->last_doze = jiffies;
	}

set_sleep_mode:
	priv->sleep_mode = FUNC0(&priv->sleepstatus.status);
}