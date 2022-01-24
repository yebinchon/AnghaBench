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
typedef  int /*<<< orphan*/  u8 ;
struct gb_gpio_irq_mask_request {int /*<<< orphan*/  which; } ;
struct gb_gpio_controller {int /*<<< orphan*/  connection; TYPE_1__* gbphy_dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  request ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_GPIO_TYPE_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_gpio_irq_mask_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gb_gpio_controller *ggc, u8 hwirq)
{
	struct device *dev = &ggc->gbphy_dev->dev;
	struct gb_gpio_irq_mask_request request;
	int ret;

	request.which = hwirq;
	ret = FUNC1(ggc->connection,
				GB_GPIO_TYPE_IRQ_MASK,
				&request, sizeof(request), NULL, 0);
	if (ret)
		FUNC0(dev, "failed to mask irq: %d\n", ret);
}