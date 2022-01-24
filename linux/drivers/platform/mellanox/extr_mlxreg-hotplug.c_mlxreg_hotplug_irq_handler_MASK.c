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
struct mlxreg_hotplug_priv_data {int /*<<< orphan*/  dwork_irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC1(int irq, void *dev)
{
	struct mlxreg_hotplug_priv_data *priv;

	priv = (struct mlxreg_hotplug_priv_data *)dev;

	/* Schedule work task for immediate execution.*/
	FUNC0(&priv->dwork_irq, 0);

	return IRQ_HANDLED;
}