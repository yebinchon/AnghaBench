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
struct omap2430_glue {int /*<<< orphan*/  omap_musb_mailbox_work; } ;
struct musb {int /*<<< orphan*/ * phy; struct device* controller; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct omap2430_glue* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct musb *musb)
{
	struct device *dev = musb->controller;
	struct omap2430_glue *glue = FUNC1(dev->parent);

	FUNC2(musb);
	FUNC4(musb->phy);
	FUNC3(musb->phy);
	musb->phy = NULL;
	FUNC0(&glue->omap_musb_mailbox_work);

	return 0;
}