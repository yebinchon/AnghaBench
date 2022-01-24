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
struct pi433_device {int /*<<< orphan*/  spi; int /*<<< orphan*/ * irq_num; void** irq_state; int /*<<< orphan*/  rx_cfg; int /*<<< orphan*/  rx_active; } ;

/* Variables and functions */
 size_t DIO0 ; 
 size_t DIO1 ; 
 void* DIO_FIFO_LEVEL ; 
 void* DIO_RSSI_DIO0 ; 
 scalar_t__ FIFO_SIZE ; 
 scalar_t__ FIFO_THRESHOLD ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  receive ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pi433_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct pi433_device *dev)
{
	int retval;

	/* return without action, if no pending read request */
	if (!dev->rx_active)
		return 0;

	/* setup for receiving */
	retval = FUNC4(dev, &dev->rx_cfg);
	if (retval)
		return retval;

	/* setup rssi irq */
	retval = FUNC1(dev->spi, DIO0, DIO_RSSI_DIO0);
	if (retval < 0)
		return retval;
	dev->irq_state[DIO0] = DIO_RSSI_DIO0;
	FUNC0(dev->irq_num[DIO0], IRQ_TYPE_EDGE_RISING);

	/* setup fifo level interrupt */
	retval = FUNC2(dev->spi, FIFO_SIZE - FIFO_THRESHOLD);
	if (retval < 0)
		return retval;
	retval = FUNC1(dev->spi, DIO1, DIO_FIFO_LEVEL);
	if (retval < 0)
		return retval;
	dev->irq_state[DIO1] = DIO_FIFO_LEVEL;
	FUNC0(dev->irq_num[DIO1], IRQ_TYPE_EDGE_RISING);

	/* set module to receiving mode */
	retval = FUNC3(dev->spi, receive);
	if (retval < 0)
		return retval;

	return 0;
}