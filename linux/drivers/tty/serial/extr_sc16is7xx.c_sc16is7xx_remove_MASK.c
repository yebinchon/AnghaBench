#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sc16is7xx_port {int /*<<< orphan*/  clk; int /*<<< orphan*/  kworker_task; int /*<<< orphan*/  kworker; TYPE_2__* p; TYPE_1__* devtype; int /*<<< orphan*/  gpio; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  line; } ;
struct TYPE_6__ {TYPE_3__ port; } ;
struct TYPE_5__ {int nr_uart; scalar_t__ nr_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sc16is7xx_port* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc16is7xx_lines ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc16is7xx_uart ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct sc16is7xx_port *s = FUNC3(dev);
	int i;

#ifdef CONFIG_GPIOLIB
	if (s->devtype->nr_gpio)
		gpiochip_remove(&s->gpio);
#endif

	for (i = 0; i < s->devtype->nr_uart; i++) {
		FUNC8(&sc16is7xx_uart, &s->p[i].port);
		FUNC1(s->p[i].port.line, &sc16is7xx_lines);
		FUNC7(&s->p[i].port, 0);
	}

	FUNC5(&s->kworker);
	FUNC6(s->kworker_task);

	if (!FUNC0(s->clk))
		FUNC2(s->clk);

	return 0;
}