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
struct q6v5 {int /*<<< orphan*/  mss_restart; int /*<<< orphan*/  pdc_reset; scalar_t__ has_alt_reset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct q6v5 *qproc)
{
	int ret;

	if (qproc->has_alt_reset) {
		FUNC0(qproc->pdc_reset);
		ret = FUNC2(qproc->mss_restart);
		FUNC1(qproc->pdc_reset);
	} else {
		ret = FUNC0(qproc->mss_restart);
	}

	return ret;
}