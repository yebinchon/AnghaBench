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
struct r8192_priv {scalar_t__ being_init_adapter; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 struct r8192_priv* FUNC12 (struct net_device*) ; 

void FUNC13(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC12(dev);

	if (priv->being_init_adapter)
		return;

	FUNC1(dev);

	FUNC7(dev);
	FUNC2(dev);

	FUNC4(dev);
	FUNC10(dev);
	FUNC6(dev);

	FUNC8(dev);
	FUNC0(dev);

	FUNC5(dev);
	FUNC3(dev);

	FUNC11(dev);
	FUNC9(dev);
}