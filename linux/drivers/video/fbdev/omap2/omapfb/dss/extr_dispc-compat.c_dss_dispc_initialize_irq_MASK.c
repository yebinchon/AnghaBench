#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  last_reset; } ;
struct TYPE_5__ {int /*<<< orphan*/  error_work; int /*<<< orphan*/  irq_error_mask; int /*<<< orphan*/  registered_isr; int /*<<< orphan*/  irq_lock; TYPE_1__ irq_stats; int /*<<< orphan*/  irq_stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_IRQ_MASK_ERROR ; 
 int /*<<< orphan*/  DISPC_IRQ_SYNC_LOST2 ; 
 int /*<<< orphan*/  DISPC_IRQ_SYNC_LOST3 ; 
 int /*<<< orphan*/  DISPC_IRQ_VID3_FIFO_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FEAT_MGR_LCD2 ; 
 int /*<<< orphan*/  FEAT_MGR_LCD3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ dispc_compat ; 
 int /*<<< orphan*/  dispc_dump_irqs ; 
 int /*<<< orphan*/  dispc_error_worker ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  omap_dispc_irq_handler ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(void)
{
	int r;

#ifdef CONFIG_FB_OMAP2_DSS_COLLECT_IRQ_STATS
	spin_lock_init(&dispc_compat.irq_stats_lock);
	dispc_compat.irq_stats.last_reset = jiffies;
	dss_debugfs_create_file("dispc_irq", dispc_dump_irqs);
#endif

	FUNC10(&dispc_compat.irq_lock);

	FUNC9(dispc_compat.registered_isr, 0,
			sizeof(dispc_compat.registered_isr));

	dispc_compat.irq_error_mask = DISPC_IRQ_MASK_ERROR;
	if (FUNC8(FEAT_MGR_LCD2))
		dispc_compat.irq_error_mask |= DISPC_IRQ_SYNC_LOST2;
	if (FUNC8(FEAT_MGR_LCD3))
		dispc_compat.irq_error_mask |= DISPC_IRQ_SYNC_LOST3;
	if (FUNC7() > 3)
		dispc_compat.irq_error_mask |= DISPC_IRQ_VID3_FIFO_UNDERFLOW;

	/*
	 * there's SYNC_LOST_DIGIT waiting after enabling the DSS,
	 * so clear it
	 */
	FUNC3(FUNC4());

	FUNC1(&dispc_compat.error_work, dispc_error_worker);

	FUNC2();

	r = FUNC5(omap_dispc_irq_handler, &dispc_compat);
	if (r) {
		FUNC0("dispc_request_irq failed\n");
		return r;
	}

	return 0;
}