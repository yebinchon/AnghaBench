#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pthru32_h; int /*<<< orphan*/  pthru32; } ;
typedef  TYPE_1__ uioc_t ;
struct TYPE_7__ {int max_kioc; int /*<<< orphan*/  pthru_dma_pool; TYPE_1__* mbox_list; TYPE_1__* kioc_list; } ;
typedef  TYPE_2__ mraid_mmadp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(mraid_mmadp_t *adp)
{
	uioc_t	*kioc;
	int	i;

	FUNC3(adp);

	for (i = 0; i < adp->max_kioc; i++) {

		kioc = adp->kioc_list + i;

		FUNC1(adp->pthru_dma_pool, kioc->pthru32,
				kioc->pthru32_h);
	}

	FUNC2(adp->kioc_list);
	FUNC2(adp->mbox_list);

	FUNC0(adp->pthru_dma_pool);


	return;
}