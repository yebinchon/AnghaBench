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
typedef  unsigned int u32 ;
struct work_struct {int dummy; } ;
struct omap_overlay_manager {int /*<<< orphan*/  name; } ;
struct omap_overlay {scalar_t__ id; int /*<<< orphan*/  (* disable ) (struct omap_overlay*) ;struct omap_overlay_manager* manager; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {unsigned int error_irqs; unsigned int irq_error_mask; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
#define  DISPC_IRQ_GFX_FIFO_UNDERFLOW 131 
 unsigned int DISPC_IRQ_OCP_ERR ; 
#define  DISPC_IRQ_VID1_FIFO_UNDERFLOW 130 
#define  DISPC_IRQ_VID2_FIFO_UNDERFLOW 129 
#define  DISPC_IRQ_VID3_FIFO_UNDERFLOW 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ OMAP_DSS_GFX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ dispc_compat ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 struct omap_overlay* FUNC10 (int) ; 
 struct omap_overlay_manager* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC15 (struct omap_overlay*) ; 

__attribute__((used)) static void FUNC16(struct work_struct *work)
{
	int i;
	u32 errors;
	unsigned long flags;
	static const unsigned fifo_underflow_bits[] = {
		DISPC_IRQ_GFX_FIFO_UNDERFLOW,
		DISPC_IRQ_VID1_FIFO_UNDERFLOW,
		DISPC_IRQ_VID2_FIFO_UNDERFLOW,
		DISPC_IRQ_VID3_FIFO_UNDERFLOW,
	};

	FUNC12(&dispc_compat.irq_lock, flags);
	errors = dispc_compat.error_irqs;
	dispc_compat.error_irqs = 0;
	FUNC13(&dispc_compat.irq_lock, flags);

	FUNC3();

	for (i = 0; i < FUNC9(); ++i) {
		struct omap_overlay *ovl;
		unsigned bit;

		ovl = FUNC10(i);
		bit = fifo_underflow_bits[i];

		if (bit & errors) {
			FUNC0("FIFO UNDERFLOW on %s, disabling the overlay\n",
					ovl->name);
			ovl->disable(ovl);
			FUNC7(50);
		}
	}

	for (i = 0; i < FUNC8(); ++i) {
		struct omap_overlay_manager *mgr;
		unsigned bit;

		mgr = FUNC11(i);
		bit = FUNC2(i);

		if (bit & errors) {
			int j;

			FUNC0("SYNC_LOST on channel %s, restarting the output "
					"with video overlays disabled\n",
					mgr->name);

			FUNC5(mgr);

			for (j = 0; j < FUNC9(); ++j) {
				struct omap_overlay *ovl;
				ovl = FUNC10(j);

				if (ovl->id != OMAP_DSS_GFX &&
						ovl->manager == mgr)
					ovl->disable(ovl);
			}

			FUNC6(mgr);
		}
	}

	if (errors & DISPC_IRQ_OCP_ERR) {
		FUNC0("OCP_ERR\n");
		for (i = 0; i < FUNC8(); ++i) {
			struct omap_overlay_manager *mgr;

			mgr = FUNC11(i);
			FUNC5(mgr);
		}
	}

	FUNC12(&dispc_compat.irq_lock, flags);
	dispc_compat.irq_error_mask |= errors;
	FUNC1();
	FUNC13(&dispc_compat.irq_lock, flags);

	FUNC4();
}