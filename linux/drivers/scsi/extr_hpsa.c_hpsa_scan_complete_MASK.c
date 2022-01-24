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
struct ctlr_info {int scan_finished; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  scan_wait_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ctlr_info *h)
{
	unsigned long flags;

	FUNC0(&h->scan_lock, flags);
	h->scan_finished = 1;
	FUNC2(&h->scan_wait_queue);
	FUNC1(&h->scan_lock, flags);
}