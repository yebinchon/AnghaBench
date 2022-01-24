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
struct dwc3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; TYPE_1__* gadget_driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* resume ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dwc3 *dwc)
{
	if (dwc->gadget_driver && dwc->gadget_driver->resume) {
		FUNC1(&dwc->lock);
		dwc->gadget_driver->resume(&dwc->gadget);
		FUNC0(&dwc->lock);
	}
}