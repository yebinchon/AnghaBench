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
struct qedf_fastpath {int /*<<< orphan*/  sb_info; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IGU_INT_DISABLE ; 
 int /*<<< orphan*/  IGU_INT_ENABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qedf_fastpath*) ; 
 int /*<<< orphan*/  FUNC4 (struct qedf_fastpath*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct qedf_fastpath *fp = dev_id;

	if (!fp) {
		FUNC0(NULL, "fp is null.\n");
		return IRQ_HANDLED;
	}
	if (!fp->sb_info) {
		FUNC0(NULL, "fp->sb_info in null.");
		return IRQ_HANDLED;
	}

	/*
	 * Disable interrupts for this status block while we process new
	 * completions
	 */
	FUNC1(fp->sb_info, IGU_INT_DISABLE, 0 /*do not update*/);

	while (1) {
		FUNC4(fp);

		if (FUNC3(fp) == 0) {
			/* Update the sb information */
			FUNC2(fp->sb_info);

			/* Check for more work */
			FUNC5();

			if (FUNC3(fp) == 0) {
				/* Re-enable interrupts */
				FUNC1(fp->sb_info, IGU_INT_ENABLE, 1);
				return IRQ_HANDLED;
			}
		}
	}

	/* Do we ever want to break out of above loop? */
	return IRQ_HANDLED;
}