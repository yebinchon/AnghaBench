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
struct ks_wlan_private {int /*<<< orphan*/  devread_wait; int /*<<< orphan*/  dev_read_lock; int /*<<< orphan*/  multicast_spin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ks_wlan_private *priv)
{
	FUNC0(priv);
	FUNC5(priv);

	FUNC8(&priv->multicast_spin);
	FUNC8(&priv->dev_read_lock);
	FUNC7(&priv->devread_wait);

	FUNC1(priv);
	FUNC3(priv);
	FUNC6(priv);
	FUNC2(priv);
	FUNC4(priv);

	return 0;
}