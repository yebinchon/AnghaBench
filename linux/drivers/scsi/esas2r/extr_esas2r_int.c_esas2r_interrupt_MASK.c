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
struct esas2r_adapter {int /*<<< orphan*/  flags2; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_INT_PENDING ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct esas2r_adapter *a = (struct esas2r_adapter *)dev_id;

	if (!FUNC0(a))
		return IRQ_NONE;

	FUNC2(AF2_INT_PENDING, &a->flags2);
	FUNC1(a);

	return IRQ_HANDLED;
}