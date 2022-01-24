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
struct sunxi_glue {int /*<<< orphan*/  flags; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; int /*<<< orphan*/  phy; int /*<<< orphan*/  host_nb; int /*<<< orphan*/  extcon; int /*<<< orphan*/  dev; int /*<<< orphan*/  xceiv; } ;
struct musb {TYPE_1__* controller; int /*<<< orphan*/  isr; scalar_t__ mregs; int /*<<< orphan*/  xceiv; int /*<<< orphan*/  phy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  SUNXI_MUSB_FL_HAS_RESET ; 
 int /*<<< orphan*/  SUNXI_MUSB_FL_HAS_SRAM ; 
 scalar_t__ SUNXI_MUSB_VEND0 ; 
 int /*<<< orphan*/  SUNXI_MUSB_VEND0_PIO_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sunxi_glue* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct musb* sunxi_musb ; 
 int /*<<< orphan*/  sunxi_musb_interrupt ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct musb *musb)
{
	struct sunxi_glue *glue = FUNC2(musb->controller->parent);
	int ret;

	sunxi_musb = musb;
	musb->phy = glue->phy;
	musb->xceiv = glue->xceiv;

	if (FUNC10(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags)) {
		ret = FUNC8(musb->controller->parent);
		if (ret)
			return ret;
	}

	ret = FUNC1(glue->clk);
	if (ret)
		goto error_sram_release;

	if (FUNC10(SUNXI_MUSB_FL_HAS_RESET, &glue->flags)) {
		ret = FUNC7(glue->rst);
		if (ret)
			goto error_clk_disable;
	}

	FUNC11(SUNXI_MUSB_VEND0_PIO_MODE, musb->mregs + SUNXI_MUSB_VEND0);

	/* Register notifier before calling phy_init() */
	ret = FUNC3(glue->dev, glue->extcon,
					EXTCON_USB_HOST, &glue->host_nb);
	if (ret)
		goto error_reset_assert;

	ret = FUNC4(glue->phy);
	if (ret)
		goto error_reset_assert;

	musb->isr = sunxi_musb_interrupt;

	/* Stop the musb-core from doing runtime pm (not supported on sunxi) */
	FUNC5(musb->controller);

	return 0;

error_reset_assert:
	if (FUNC10(SUNXI_MUSB_FL_HAS_RESET, &glue->flags))
		FUNC6(glue->rst);
error_clk_disable:
	FUNC0(glue->clk);
error_sram_release:
	if (FUNC10(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags))
		FUNC9(musb->controller->parent);
	return ret;
}