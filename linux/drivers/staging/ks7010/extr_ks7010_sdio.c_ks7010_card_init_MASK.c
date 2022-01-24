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
struct ks_wlan_private {scalar_t__ version_size; scalar_t__ dev_state; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  confirm_wait; scalar_t__ mac_address_valid; } ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_PREINIT ; 
 scalar_t__ DEVICE_STATE_READY ; 
 int HZ ; 
 int /*<<< orphan*/  SME_START ; 
 int /*<<< orphan*/  FUNC0 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct ks_wlan_private *priv)
{
	FUNC1(&priv->confirm_wait);

	/* get mac address & firmware version */
	FUNC0(priv, SME_START);

	if (!FUNC4
	    (&priv->confirm_wait, 5 * HZ)) {
		FUNC3(priv->net_dev, "wait time out!! SME_START\n");
	}

	if (priv->mac_address_valid && priv->version_size != 0)
		priv->dev_state = DEVICE_STATE_PREINIT;

	FUNC2(priv);

	if (!FUNC4
	    (&priv->confirm_wait, 5 * HZ)) {
		FUNC3(priv->net_dev, "wait time out!! wireless parameter set\n");
	}

	if (priv->dev_state >= DEVICE_STATE_PREINIT) {
		FUNC3(priv->net_dev, "DEVICE READY!!\n");
		priv->dev_state = DEVICE_STATE_READY;
	}
}