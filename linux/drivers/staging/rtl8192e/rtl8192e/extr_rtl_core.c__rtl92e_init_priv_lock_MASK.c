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
struct r8192_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rf_mutex; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  ps_lock; int /*<<< orphan*/  rf_ps_lock; int /*<<< orphan*/  irq_th_lock; int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct r8192_priv *priv)
{
	FUNC1(&priv->tx_lock);
	FUNC1(&priv->irq_th_lock);
	FUNC1(&priv->rf_ps_lock);
	FUNC1(&priv->ps_lock);
	FUNC0(&priv->wx_mutex);
	FUNC0(&priv->rf_mutex);
	FUNC0(&priv->mutex);
}