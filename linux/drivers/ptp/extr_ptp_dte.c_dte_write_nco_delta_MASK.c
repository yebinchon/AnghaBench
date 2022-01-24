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
struct ptp_dte {scalar_t__ ts_ovf_last; int /*<<< orphan*/  regs; scalar_t__ ts_wrap_cnt; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ DTE_NCO_MAX_NS ; 
 scalar_t__ DTE_NCO_TS_WRAP_LSHIFT ; 
 scalar_t__ DTE_NCO_TS_WRAP_MASK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ptp_dte *ptp_dte, s64 delta)
{
	s64 ns;

	ns = FUNC1(ptp_dte->regs);

	/* handle wraparound conditions */
	if ((delta < 0) && (FUNC0(delta) > ns)) {
		if (ptp_dte->ts_wrap_cnt) {
			ns += DTE_NCO_MAX_NS + delta;
			ptp_dte->ts_wrap_cnt--;
		} else {
			ns = 0;
		}
	} else {
		ns += delta;
		if (ns > DTE_NCO_MAX_NS) {
			ptp_dte->ts_wrap_cnt++;
			ns -= DTE_NCO_MAX_NS;
		}
	}

	FUNC2(ptp_dte->regs, ns);

	ptp_dte->ts_ovf_last = (ns >> DTE_NCO_TS_WRAP_LSHIFT) &
			DTE_NCO_TS_WRAP_MASK;
}