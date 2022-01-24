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
typedef  int /*<<< orphan*/  ulong ;
struct cxlflash_cfg {struct afu* afu; } ;
struct ctx_info {struct ctx_info* rht_lun; struct ctx_info* rht_needs_ws; scalar_t__ rht_start; TYPE_1__* ctrl_map; int /*<<< orphan*/  luns; scalar_t__ initialized; } ;
struct afu {scalar_t__ afu_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctx_cap; int /*<<< orphan*/  rht_cnt_id; int /*<<< orphan*/  rht_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cxlflash_cfg *cfg,
			    struct ctx_info *ctxi)
{
	struct afu *afu = cfg->afu;

	if (ctxi->initialized) {
		FUNC0(!FUNC3(&ctxi->luns));

		/* Clear RHT registers and drop all capabilities for context */
		if (afu->afu_map && ctxi->ctrl_map) {
			FUNC4(0, &ctxi->ctrl_map->rht_start);
			FUNC4(0, &ctxi->ctrl_map->rht_cnt_id);
			FUNC4(0, &ctxi->ctrl_map->ctx_cap);
		}
	}

	/* Free memory associated with context */
	FUNC1((ulong)ctxi->rht_start);
	FUNC2(ctxi->rht_needs_ws);
	FUNC2(ctxi->rht_lun);
	FUNC2(ctxi);
}