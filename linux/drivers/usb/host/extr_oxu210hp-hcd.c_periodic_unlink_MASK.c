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
union ehci_shadow {void* ptr; int /*<<< orphan*/ * hw_next; } ;
struct oxu_hcd {int /*<<< orphan*/ * periodic; union ehci_shadow* pshadow; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 union ehci_shadow* FUNC1 (union ehci_shadow*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct oxu_hcd *oxu, unsigned frame, void *ptr)
{
	union ehci_shadow *prev_p = &oxu->pshadow[frame];
	__le32 *hw_p = &oxu->periodic[frame];
	union ehci_shadow here = *prev_p;

	/* find predecessor of "ptr"; hw and shadow lists are in sync */
	while (here.ptr && here.ptr != ptr) {
		prev_p = FUNC1(prev_p, FUNC0(*hw_p));
		hw_p = here.hw_next;
		here = *prev_p;
	}
	/* an interrupt entry (at list end) could have been shared */
	if (!here.ptr)
		return;

	/* update shadow and hardware lists ... the old "next" pointers
	 * from ptr may still be in use, the caller updates them.
	 */
	*prev_p = *FUNC1(&here, FUNC0(*hw_p));
	*hw_p = *here.hw_next;
}