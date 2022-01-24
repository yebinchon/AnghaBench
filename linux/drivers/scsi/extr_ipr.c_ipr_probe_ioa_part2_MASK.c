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
struct ipr_ioa_cfg {int probe_done; TYPE_1__* host; scalar_t__ needs_hard_reset; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_NONE ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipr_reset_enable_ioa ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ipr_ioa_cfg *ioa_cfg)
{
	int rc = 0;
	unsigned long host_lock_flags = 0;

	ENTER;
	FUNC3(ioa_cfg->host->host_lock, host_lock_flags);
	FUNC1(&ioa_cfg->pdev->dev, "ioa_cfg adx: 0x%p\n", ioa_cfg);
	ioa_cfg->probe_done = 1;
	if (ioa_cfg->needs_hard_reset) {
		ioa_cfg->needs_hard_reset = 0;
		FUNC2(ioa_cfg, IPR_SHUTDOWN_NONE);
	} else
		FUNC0(ioa_cfg, ipr_reset_enable_ioa,
					IPR_SHUTDOWN_NONE);
	FUNC4(ioa_cfg->host->host_lock, host_lock_flags);

	LEAVE;
	return rc;
}