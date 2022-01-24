#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct octeon_ethernet {TYPE_1__* tx_free_list; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct octeon_ethernet* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC2(dev);
	unsigned long flags;
	int qos;

	for (qos = 0; qos < 16; qos++) {
		FUNC4(&priv->tx_free_list[qos].lock, flags);
		while (FUNC3(&priv->tx_free_list[qos]))
			FUNC1(FUNC0
					  (&priv->tx_free_list[qos]));
		FUNC5(&priv->tx_free_list[qos].lock, flags);
	}
}