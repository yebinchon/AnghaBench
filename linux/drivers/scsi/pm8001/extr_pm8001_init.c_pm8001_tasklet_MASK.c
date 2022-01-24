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
struct pm8001_hba_info {int dummy; } ;
struct isr_param {int /*<<< orphan*/  irq_id; struct pm8001_hba_info* drv_inst; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* isr ) (struct pm8001_hba_info*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(unsigned long opaque)
{
	struct pm8001_hba_info *pm8001_ha;
	struct isr_param *irq_vector;

	irq_vector = (struct isr_param *)opaque;
	pm8001_ha = irq_vector->drv_inst;
	if (FUNC2(!pm8001_ha))
		FUNC0(1);
	PM8001_CHIP_DISP->isr(pm8001_ha, irq_vector->irq_id);
}