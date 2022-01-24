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
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_device {int /*<<< orphan*/  irq; } ;
struct max3421_hcd {int /*<<< orphan*/  todo; TYPE_2__* spi_thread; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_IRQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct max3421_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct spi_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static irqreturn_t
FUNC5(int irq, void *dev_id)
{
	struct usb_hcd *hcd = dev_id;
	struct spi_device *spi = FUNC3(hcd->self.controller);
	struct max3421_hcd *max3421_hcd = FUNC1(hcd);

	if (max3421_hcd->spi_thread &&
	    max3421_hcd->spi_thread->state != TASK_RUNNING)
		FUNC4(max3421_hcd->spi_thread);
	if (!FUNC2(ENABLE_IRQ, &max3421_hcd->todo))
		FUNC0(spi->irq);
	return IRQ_HANDLED;
}