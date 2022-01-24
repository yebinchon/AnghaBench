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
struct ptp_clock {int defunct; int /*<<< orphan*/  clock; int /*<<< orphan*/  devid; scalar_t__ pps_source; scalar_t__ kworker; int /*<<< orphan*/  aux_work; int /*<<< orphan*/  tsev_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  ptp_class ; 
 int /*<<< orphan*/  FUNC5 (struct ptp_clock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ptp_clock *ptp)
{
	ptp->defunct = 1;
	FUNC6(&ptp->tsev_wq);

	if (ptp->kworker) {
		FUNC1(&ptp->aux_work);
		FUNC2(ptp->kworker);
	}

	/* Release the clock's resources. */
	if (ptp->pps_source)
		FUNC4(ptp->pps_source);

	FUNC0(ptp_class, ptp->devid);
	FUNC5(ptp);

	FUNC3(&ptp->clock);
	return 0;
}