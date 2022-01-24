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
struct qman_cgr {size_t cgrid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__* qman_cgr_cpus ; 
 int /*<<< orphan*/  FUNC2 (struct qman_cgr*) ; 
 int /*<<< orphan*/  qman_delete_cgr_smp_call ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct qman_cgr*,int) ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(struct qman_cgr *cgr)
{
	FUNC0();
	if (qman_cgr_cpus[cgr->cgrid] != FUNC4()) {
		FUNC3(qman_cgr_cpus[cgr->cgrid],
					 qman_delete_cgr_smp_call, cgr, true);
		FUNC1();
		return;
	}

	FUNC2(cgr);
	FUNC1();
}