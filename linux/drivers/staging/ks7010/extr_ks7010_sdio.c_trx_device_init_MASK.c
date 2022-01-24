#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rx_dev_lock; scalar_t__ qtail; scalar_t__ qhead; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dev_lock; scalar_t__ qtail; scalar_t__ qhead; } ;
struct ks_wlan_private {int /*<<< orphan*/  rx_bh_task; TYPE_2__ rx_dev; TYPE_1__ tx_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  rx_event_task ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct ks_wlan_private *priv)
{
	priv->tx_dev.qhead = 0;
	priv->tx_dev.qtail = 0;

	priv->rx_dev.qhead = 0;
	priv->rx_dev.qtail = 0;

	FUNC0(&priv->tx_dev.tx_dev_lock);
	FUNC0(&priv->rx_dev.rx_dev_lock);

	FUNC1(&priv->rx_bh_task, rx_event_task, (unsigned long)priv);

	return 0;
}