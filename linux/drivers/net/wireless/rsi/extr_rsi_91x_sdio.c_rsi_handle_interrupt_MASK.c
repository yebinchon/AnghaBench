#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdio_func {int dummy; } ;
struct rsi_hw {TYPE_1__* priv; scalar_t__ rsi_dev; } ;
struct rsi_91x_sdiodev {int /*<<< orphan*/ * sdio_irq_task; } ;
struct TYPE_2__ {scalar_t__ fsm_state; } ;

/* Variables and functions */
 scalar_t__ FSM_FW_NOT_LOADED ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC0 (struct rsi_hw*) ; 
 struct rsi_hw* FUNC1 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC2(struct sdio_func *function)
{
	struct rsi_hw *adapter = FUNC1(function);
	struct rsi_91x_sdiodev *dev =
		(struct rsi_91x_sdiodev *)adapter->rsi_dev;

	if (adapter->priv->fsm_state == FSM_FW_NOT_LOADED)
		return;

	dev->sdio_irq_task = current;
	FUNC0(adapter);
	dev->sdio_irq_task = NULL;
}