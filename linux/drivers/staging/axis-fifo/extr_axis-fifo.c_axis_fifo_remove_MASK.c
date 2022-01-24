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
struct device {int /*<<< orphan*/  kobj; } ;
struct platform_device {struct device dev; } ;
struct axis_fifo {TYPE_1__* mem; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  devt; struct device* device; int /*<<< orphan*/  char_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  axis_fifo_attrs_group ; 
 int /*<<< orphan*/  axis_fifo_driver_class ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct axis_fifo* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct axis_fifo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct axis_fifo *fifo = FUNC1(dev);

	FUNC8(&fifo->device->kobj, &axis_fifo_attrs_group);
	FUNC0(&fifo->char_device);
	FUNC2(fifo->device, NULL);
	FUNC3(axis_fifo_driver_class, fifo->devt);
	FUNC9(fifo->devt, 1);
	FUNC4(fifo->irq, fifo);
	FUNC5(fifo->base_addr);
	FUNC6(fifo->mem->start, FUNC7(fifo->mem));
	FUNC2(dev, NULL);
	return 0;
}