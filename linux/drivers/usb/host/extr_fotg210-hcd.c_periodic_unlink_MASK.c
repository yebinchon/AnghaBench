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
union fotg210_shadow {void* ptr; } ;
struct fotg210_hcd {int /*<<< orphan*/ * periodic; union fotg210_shadow* pshadow; } ;
typedef  int /*<<< orphan*/  __hc32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*,int /*<<< orphan*/ ) ; 
 union fotg210_shadow* FUNC1 (struct fotg210_hcd*,union fotg210_shadow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct fotg210_hcd*,union fotg210_shadow*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fotg210_hcd *fotg210, unsigned frame,
		void *ptr)
{
	union fotg210_shadow *prev_p = &fotg210->pshadow[frame];
	__hc32 *hw_p = &fotg210->periodic[frame];
	union fotg210_shadow here = *prev_p;

	/* find predecessor of "ptr"; hw and shadow lists are in sync */
	while (here.ptr && here.ptr != ptr) {
		prev_p = FUNC1(fotg210, prev_p,
				FUNC0(fotg210, *hw_p));
		hw_p = FUNC2(fotg210, &here,
				FUNC0(fotg210, *hw_p));
		here = *prev_p;
	}
	/* an interrupt entry (at list end) could have been shared */
	if (!here.ptr)
		return;

	/* update shadow and hardware lists ... the old "next" pointers
	 * from ptr may still be in use, the caller updates them.
	 */
	*prev_p = *FUNC1(fotg210, &here,
			FUNC0(fotg210, *hw_p));

	*hw_p = *FUNC2(fotg210, &here,
			FUNC0(fotg210, *hw_p));
}