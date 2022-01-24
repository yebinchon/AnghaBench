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
struct sunxi_glue {int /*<<< orphan*/  xceiv; int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; int /*<<< orphan*/  phy; int /*<<< orphan*/  work; } ;
struct musb {TYPE_1__* controller; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUNXI_MUSB_FL_HAS_RESET ; 
 int /*<<< orphan*/  SUNXI_MUSB_FL_HAS_SRAM ; 
 int /*<<< orphan*/  SUNXI_MUSB_FL_PHY_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sunxi_glue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct musb *musb)
{
	struct sunxi_glue *glue = FUNC2(musb->controller->parent);

	FUNC6(musb->controller);

	FUNC0(&glue->work);
	if (FUNC9(SUNXI_MUSB_FL_PHY_ON, &glue->flags))
		FUNC5(glue->phy);

	FUNC4(glue->phy);

	if (FUNC9(SUNXI_MUSB_FL_HAS_RESET, &glue->flags))
		FUNC7(glue->rst);

	FUNC1(glue->clk);
	if (FUNC9(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags))
		FUNC8(musb->controller->parent);

	FUNC3(glue->dev, glue->xceiv);

	return 0;
}