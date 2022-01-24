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
struct csio_hw {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  n_pcich_offline ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *dev_id)
{
	struct csio_hw *hw = (struct csio_hw *) dev_id;

	if (FUNC3(!hw))
		return IRQ_NONE;

	if (FUNC3(FUNC2(hw->pdev))) {
		FUNC0(hw, n_pcich_offline);
		return IRQ_NONE;
	}

	FUNC1(hw);

	return IRQ_HANDLED;
}