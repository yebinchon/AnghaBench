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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct musb {int /*<<< orphan*/  xceiv; scalar_t__ dma_controller; int /*<<< orphan*/  controller; int /*<<< orphan*/  lock; int /*<<< orphan*/  mregs; int /*<<< orphan*/  deassert_reset_work; int /*<<< orphan*/  finish_resume_work; int /*<<< orphan*/  irq_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct musb* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct musb*) ; 
 int /*<<< orphan*/  FUNC6 (struct musb*) ; 
 int /*<<< orphan*/  FUNC7 (struct musb*) ; 
 int /*<<< orphan*/  FUNC8 (struct musb*) ; 
 int /*<<< orphan*/ * musb_phy_callback ; 
 int /*<<< orphan*/  FUNC9 (struct musb*) ; 
 int /*<<< orphan*/  FUNC10 (struct musb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device	*dev = &pdev->dev;
	struct musb	*musb = FUNC1(dev);
	unsigned long	flags;

	/* this gets called on rmmod.
	 *  - Host mode: host may still be active
	 *  - Peripheral mode: peripheral is deactivated (or never-activated)
	 *  - OTG mode: both roles are deactivated (or never-activated)
	 */
	FUNC5(musb);

	FUNC0(&musb->irq_work);
	FUNC0(&musb->finish_resume_work);
	FUNC0(&musb->deassert_reset_work);
	FUNC14(musb->controller);
	FUNC8(musb);
	FUNC7(musb);

	FUNC9(musb);
	FUNC16(&musb->lock, flags);
	FUNC3(musb);
	FUNC11(musb->mregs, MUSB_DEVCTL, 0);
	FUNC17(&musb->lock, flags);
	FUNC10(musb);

	FUNC13(musb->controller);
	FUNC15(musb->controller);
	FUNC12(musb->controller);
	musb_phy_callback = NULL;
	if (musb->dma_controller)
		FUNC4(musb->dma_controller);
	FUNC18(musb->xceiv);
	FUNC6(musb);
	FUNC2(dev, 0);
	return 0;
}