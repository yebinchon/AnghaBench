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
struct q6v5 {void* pdc_reset; int /*<<< orphan*/  dev; scalar_t__ has_alt_reset; void* mss_restart; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct q6v5 *qproc)
{
	qproc->mss_restart = FUNC3(qproc->dev,
							      "mss_restart");
	if (FUNC0(qproc->mss_restart)) {
		FUNC2(qproc->dev, "failed to acquire mss restart\n");
		return FUNC1(qproc->mss_restart);
	}

	if (qproc->has_alt_reset) {
		qproc->pdc_reset = FUNC3(qproc->dev,
								    "pdc_reset");
		if (FUNC0(qproc->pdc_reset)) {
			FUNC2(qproc->dev, "failed to acquire pdc reset\n");
			return FUNC1(qproc->pdc_reset);
		}
	}

	return 0;
}