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
struct ab8500_fg {int /*<<< orphan*/  ab8500_fg_complete; scalar_t__ nbr_cceoc_irq_cnt; int /*<<< orphan*/  ab8500_fg_started; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC1(int irq, void *_di)
{
	struct ab8500_fg *di = _di;
	if (!di->nbr_cceoc_irq_cnt) {
		di->nbr_cceoc_irq_cnt++;
		FUNC0(&di->ab8500_fg_started);
	} else {
		di->nbr_cceoc_irq_cnt = 0;
		FUNC0(&di->ab8500_fg_complete);
	}
	return IRQ_HANDLED;
}