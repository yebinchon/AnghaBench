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
struct musb {int /*<<< orphan*/  xceiv; int /*<<< orphan*/  dev_timer; TYPE_1__* controller; } ;
struct da8xx_glue {int /*<<< orphan*/  clk; int /*<<< orphan*/  phy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct da8xx_glue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct musb *musb)
{
	struct da8xx_glue *glue = FUNC2(musb->controller->parent);

	FUNC1(&musb->dev_timer);

	FUNC4(glue->phy);
	FUNC3(glue->phy);
	FUNC0(glue->clk);

	FUNC5(musb->xceiv);

	return 0;
}