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
struct sunxi_glue {int /*<<< orphan*/  work; int /*<<< orphan*/  flags; struct musb* musb; } ;
struct musb {TYPE_1__* controller; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUNXI_MUSB_FL_ENABLED ; 
 struct sunxi_glue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct musb *musb)
{
	struct sunxi_glue *glue = FUNC0(musb->controller->parent);

	glue->musb = musb;

	/* musb_core does not call us in a balanced manner */
	if (FUNC2(SUNXI_MUSB_FL_ENABLED, &glue->flags))
		return;

	FUNC1(&glue->work);
}