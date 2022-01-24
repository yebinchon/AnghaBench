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
struct xen_mce {int dummy; } ;
struct TYPE_2__ {unsigned int next; unsigned int entry; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned int XEN_MCE_LOG_LEN ; 
 int /*<<< orphan*/  XEN_MCE_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct xen_mce*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 TYPE_1__ xen_mcelog ; 

__attribute__((used)) static void FUNC2(struct xen_mce *mce)
{
	unsigned entry;

	entry = xen_mcelog.next;

	/*
	 * When the buffer fills up discard new entries.
	 * Assume that the earlier errors are the more
	 * interesting ones:
	 */
	if (entry >= XEN_MCE_LOG_LEN) {
		FUNC1(XEN_MCE_OVERFLOW,
			(unsigned long *)&xen_mcelog.flags);
		return;
	}

	FUNC0(xen_mcelog.entry + entry, mce, sizeof(struct xen_mce));

	xen_mcelog.next++;
}