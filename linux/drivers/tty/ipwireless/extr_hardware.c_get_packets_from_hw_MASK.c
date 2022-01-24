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
struct ipw_hardware {int /*<<< orphan*/  lock; scalar_t__ rx_ready; int /*<<< orphan*/  blocking_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipw_hardware*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ipw_hardware *hw)
{
	int received = 0;
	unsigned long flags;

	FUNC1(&hw->lock, flags);
	while (hw->rx_ready && !hw->blocking_rx) {
		received = 1;
		hw->rx_ready--;
		FUNC2(&hw->lock, flags);

		FUNC0(hw);

		FUNC1(&hw->lock, flags);
	}
	FUNC2(&hw->lock, flags);

	return received;
}