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
struct r8192_priv {int undecorated_smoothed_pwdb; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct r8192_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

void FUNC9(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC7(dev);

	/* Undecorated Smoothed Signal Strength, it can utilized to dynamic mechanism. */
	priv->undecorated_smoothed_pwdb = -1;

	/* Initial TX Power Control for near/far range , add by amy 2008/05/15, porting from windows code. */
	FUNC3(dev);
	FUNC8(dev);
	/*dm_initialize_txpower_tracking(dev);*/
	FUNC0(dev);
	FUNC4(dev);
	FUNC1(dev);
	FUNC5(dev);
	FUNC6(dev);
	FUNC2(dev);

}