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
struct r8192_priv {scalar_t__ up; int /*<<< orphan*/  ieee80211; int /*<<< orphan*/  watch_dog_timer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8192_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

void FUNC6(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC2(dev);
	int reset_status = 0;

	if (priv->up == 0)
		return;
	priv->up = 0;

	FUNC4(priv);
	FUNC1(&priv->watch_dog_timer);

	FUNC3(priv->ieee80211);

	FUNC5(dev);
	reset_status = FUNC0(dev);
}