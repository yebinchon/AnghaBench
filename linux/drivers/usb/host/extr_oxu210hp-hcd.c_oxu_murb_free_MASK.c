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
struct oxu_murb {int dummy; } ;
struct oxu_hcd {int /*<<< orphan*/  mem_lock; scalar_t__* murb_used; struct oxu_murb* murb_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct oxu_hcd *oxu, struct oxu_murb *murb)
{
	int index;

	FUNC0(&oxu->mem_lock);

	index = murb - &oxu->murb_pool[0];
	oxu->murb_used[index] = 0;

	FUNC1(&oxu->mem_lock);
}