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
struct rsi_hw {TYPE_1__* priv; struct rsi_91x_sdiodev* rsi_dev; } ;
struct rsi_91x_sdiodev {struct sdio_func* pfunction; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tx_queue; } ;

/* Variables and functions */
 int NUM_SOFT_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct rsi_hw*) ; 
 int /*<<< orphan*/  rsi_handle_interrupt ; 
 int /*<<< orphan*/  FUNC1 (struct rsi_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsi_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct rsi_hw *adapter)
{
	struct rsi_91x_sdiodev *sdev = adapter->rsi_dev;
	struct sdio_func *pfunction = sdev->pfunction;
	int ii;

	for (ii = 0; ii < NUM_SOFT_QUEUES; ii++)
		FUNC9(&adapter->priv->tx_queue[ii]);

	/* Initialize device again */
	FUNC4(pfunction);

	FUNC8(pfunction);
	FUNC2(pfunction);

	FUNC6(pfunction);
	FUNC3(adapter);
	FUNC1(adapter);
	FUNC5(pfunction, rsi_handle_interrupt);
	FUNC0(adapter);

	FUNC7(pfunction);

	return 0;
}