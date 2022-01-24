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
struct hwq {int /*<<< orphan*/  irqpoll; } ;
struct cxlflash_cfg {TYPE_1__* ops; int /*<<< orphan*/  work_q; struct afu* afu; } ;
struct afu {int num_hwqs; struct afu* afu_map; int /*<<< orphan*/  cmds_active; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* psa_unmap ) (struct afu*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct afu*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cxlflash_cfg*) ; 
 struct hwq* FUNC5 (struct afu*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct afu*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct afu*) ; 

__attribute__((used)) static void FUNC10(struct cxlflash_cfg *cfg)
{
	struct afu *afu = cfg->afu;
	struct hwq *hwq;
	int i;

	FUNC2(&cfg->work_q);
	if (!FUNC3())
		FUNC4(cfg);

	if (FUNC7(afu)) {
		while (FUNC1(&afu->cmds_active))
			FUNC8(1);

		if (FUNC0(afu)) {
			for (i = 0; i < afu->num_hwqs; i++) {
				hwq = FUNC5(afu, i);

				FUNC6(&hwq->irqpoll);
			}
		}

		if (FUNC7(afu->afu_map)) {
			cfg->ops->psa_unmap(afu->afu_map);
			afu->afu_map = NULL;
		}
	}
}