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
typedef  int u32 ;
struct pvscsi_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int PVSCSI_INTR_ALL_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int FUNC1 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *devp)
{
	struct pvscsi_adapter *adapter = devp;
	u32 val = FUNC1(adapter);

	if (!(val & PVSCSI_INTR_ALL_SUPPORTED))
		return IRQ_NONE;
	FUNC2(devp, val);
	return FUNC0(irq, devp);
}