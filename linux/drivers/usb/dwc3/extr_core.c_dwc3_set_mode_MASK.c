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
typedef  int /*<<< orphan*/  u32 ;
struct dwc3 {int /*<<< orphan*/  drd_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  desired_dr_role; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_freezable_wq ; 

void FUNC3(struct dwc3 *dwc, u32 mode)
{
	unsigned long flags;

	FUNC1(&dwc->lock, flags);
	dwc->desired_dr_role = mode;
	FUNC2(&dwc->lock, flags);

	FUNC0(system_freezable_wq, &dwc->drd_work);
}