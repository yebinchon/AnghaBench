#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nr; } ;
struct sccnxp_port {int /*<<< orphan*/  regulator; TYPE_1__ uart; int /*<<< orphan*/ * port; int /*<<< orphan*/  timer; int /*<<< orphan*/  irq; int /*<<< orphan*/  poll; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sccnxp_port*) ; 
 struct sccnxp_port* FUNC3 (struct platform_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int i;
	struct sccnxp_port *s = FUNC3(pdev);

	if (!s->poll)
		FUNC2(&pdev->dev, s->irq, s);
	else
		FUNC1(&s->timer);

	for (i = 0; i < s->uart.nr; i++)
		FUNC5(&s->uart, &s->port[i]);

	FUNC6(&s->uart);

	if (!FUNC0(s->regulator))
		return FUNC4(s->regulator);

	return 0;
}