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
typedef  int u8 ;
struct r8192_priv {int /*<<< orphan*/  watch_dog_timer; int /*<<< orphan*/ * txqueue_to_outpipemap; int /*<<< orphan*/  stats; } ;
struct net_device {int dummy; } ;
struct Stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 short ENOMEM ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct r8192_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  watch_dog_timer_callback ; 

__attribute__((used)) static short FUNC13(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC1(dev);
	int err;

	FUNC4(&(priv->stats), 0, sizeof(struct Stats));
	FUNC4(priv->txqueue_to_outpipemap, 0, 9);
#ifdef PIPE12
	{
		int i = 0;
		u8 queuetopipe[] = {3, 2, 1, 0, 4, 8, 7, 6, 5};

		memcpy(priv->txqueue_to_outpipemap, queuetopipe, 9);
	}
#else
	{
		u8 queuetopipe[] = {3, 2, 1, 0, 4, 4, 0, 4, 4};

		FUNC3(priv->txqueue_to_outpipemap, queuetopipe, 9);
	}
#endif
	err = FUNC9(dev);
	if (err)
		return err;

	FUNC7(priv);
	FUNC8(dev);
	FUNC6(dev);
	err = FUNC10(dev);
	if (err) {
		FUNC0("Reading EEPROM info failed");
		return err;
	}
	FUNC5(dev);
	FUNC2(dev);
	FUNC12(&priv->watch_dog_timer, watch_dog_timer_callback, 0);
	if (FUNC11(dev) != 0) {
		FUNC0("Endopoints initialization failed");
		return -ENOMEM;
	}

	return 0;
}