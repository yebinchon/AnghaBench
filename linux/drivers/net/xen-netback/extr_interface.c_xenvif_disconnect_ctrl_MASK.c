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
struct TYPE_2__ {int /*<<< orphan*/ * sring; } ;
struct xenvif {TYPE_1__ ctrl; scalar_t__ ctrl_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct xenvif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC3 (struct xenvif*) ; 

void FUNC4(struct xenvif *vif)
{
	if (vif->ctrl_irq) {
		FUNC2(vif);
		FUNC0(vif->ctrl_irq, vif);
		vif->ctrl_irq = 0;
	}

	if (vif->ctrl.sring) {
		FUNC1(FUNC3(vif),
					vif->ctrl.sring);
		vif->ctrl.sring = NULL;
	}
}