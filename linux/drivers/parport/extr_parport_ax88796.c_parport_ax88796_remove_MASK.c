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
struct platform_device {int dummy; } ;
struct parport {int /*<<< orphan*/  irq; } ;
struct ax_drvdata {TYPE_1__* io; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ax_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*) ; 
 struct parport* FUNC4 (struct platform_device*) ; 
 struct ax_drvdata* FUNC5 (struct parport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct parport *p = FUNC4(pdev);
	struct ax_drvdata *dd = FUNC5(p);

	FUNC0(p->irq, p);
	FUNC3(p);
	FUNC1(dd->base);
	FUNC6(dd->io->start, FUNC7(dd->io));
	FUNC2(dd);

	return 0;
}