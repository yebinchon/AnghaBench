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
struct gb_loopback {scalar_t__ outstanding_operations_max; int /*<<< orphan*/  outstanding_operations; int /*<<< orphan*/  wq_completion; scalar_t__ async; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct gb_loopback *gb)
{
	if (!(gb->async && gb->outstanding_operations_max))
		return;
	FUNC2(gb->wq_completion,
				 (FUNC0(&gb->outstanding_operations) <
				  gb->outstanding_operations_max) ||
				  FUNC1());
}