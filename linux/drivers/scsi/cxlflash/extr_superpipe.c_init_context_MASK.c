#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct file {int dummy; } ;
struct cxlflash_cfg {struct afu* afu; } ;
struct ctx_info {int initialized; int /*<<< orphan*/  list; int /*<<< orphan*/  luns; int /*<<< orphan*/  kref; int /*<<< orphan*/  mutex; struct file* file; struct cxlflash_cfg* cfg; void* ctx; int /*<<< orphan*/  pid; int /*<<< orphan*/  irqs; int /*<<< orphan*/  ctxid; int /*<<< orphan*/ * ctrl_map; int /*<<< orphan*/  rht_perms; } ;
struct afu {TYPE_2__* afu_map; } ;
struct TYPE_4__ {TYPE_1__* ctrls; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ctx_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ctx_info *ctxi, struct cxlflash_cfg *cfg,
			 void *ctx, int ctxid, struct file *file, u32 perms,
			 u64 irqs)
{
	struct afu *afu = cfg->afu;

	ctxi->rht_perms = perms;
	ctxi->ctrl_map = &afu->afu_map->ctrls[ctxid].ctrl;
	ctxi->ctxid = FUNC0(ctxi, ctxid);
	ctxi->irqs = irqs;
	ctxi->pid = FUNC4(current); /* tgid = pid */
	ctxi->ctx = ctx;
	ctxi->cfg = cfg;
	ctxi->file = file;
	ctxi->initialized = true;
	FUNC3(&ctxi->mutex);
	FUNC2(&ctxi->kref);
	FUNC1(&ctxi->luns);
	FUNC1(&ctxi->list); /* initialize for list_empty() */
}