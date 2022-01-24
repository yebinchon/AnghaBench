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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rsi_hw {scalar_t__ rsi_dev; } ;
struct rsi_91x_sdiodev {scalar_t__ sdio_irq_task; int /*<<< orphan*/  pfunction; } ;

/* Variables and functions */
 scalar_t__ current ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct rsi_hw *adapter,
			   u32 addr,
			   u8 *data)
{
	struct rsi_91x_sdiodev *dev =
		(struct rsi_91x_sdiodev *)adapter->rsi_dev;
	u8 fun_num = 0;
	int status;

	if (FUNC0(dev->sdio_irq_task != current))
		FUNC1(dev->pfunction);

	if (fun_num == 0)
		*data = FUNC2(dev->pfunction, addr, &status);
	else
		*data = FUNC3(dev->pfunction, addr, &status);

	if (FUNC0(dev->sdio_irq_task != current))
		FUNC4(dev->pfunction);

	return status;
}