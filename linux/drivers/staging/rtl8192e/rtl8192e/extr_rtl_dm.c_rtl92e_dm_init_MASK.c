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
struct r8192_priv {int undecorated_smoothed_pwdb; int /*<<< orphan*/  gpio_change_rf_wq; int /*<<< orphan*/  DM_Type; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_Type_ByDriver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ _rtl92e_dm_check_rf_ctrl_gpio ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 struct r8192_priv* FUNC11 (struct net_device*) ; 

void FUNC12(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC11(dev);

	priv->DM_Type = DM_Type_ByDriver;

	priv->undecorated_smoothed_pwdb = -1;

	FUNC5(dev);

	FUNC10(dev);

	FUNC2(dev);
	FUNC9(dev);
	FUNC3(dev);
	FUNC6(dev);
	FUNC7(dev);
	FUNC4(dev);
	if (FUNC1(dev))
		FUNC8(dev);

	FUNC0(&priv->gpio_change_rf_wq,
			      (void *)_rtl92e_dm_check_rf_ctrl_gpio, dev);
}