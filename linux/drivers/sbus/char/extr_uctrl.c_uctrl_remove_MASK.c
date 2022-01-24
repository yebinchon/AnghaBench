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
struct uctrl_driver {int /*<<< orphan*/  regs; int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct uctrl_driver* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uctrl_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct uctrl_driver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uctrl_dev ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	struct uctrl_driver *p = FUNC0(&op->dev);

	if (p) {
		FUNC3(&uctrl_dev);
		FUNC1(p->irq, p);
		FUNC4(&op->resource[0], p->regs, FUNC5(&op->resource[0]));
		FUNC2(p);
	}
	return 0;
}