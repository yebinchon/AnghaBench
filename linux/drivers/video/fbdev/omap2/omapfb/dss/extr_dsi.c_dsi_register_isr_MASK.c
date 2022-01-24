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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  isr_table; } ;
struct dsi_data {int /*<<< orphan*/  irq_lock; TYPE_1__ isr_tables; } ;
typedef  int /*<<< orphan*/  omap_dsi_isr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dsidev, omap_dsi_isr_t isr,
		void *arg, u32 mask)
{
	struct dsi_data *dsi = FUNC3(dsidev);
	unsigned long flags;
	int r;

	FUNC4(&dsi->irq_lock, flags);

	r = FUNC1(isr, arg, mask, dsi->isr_tables.isr_table,
			FUNC0(dsi->isr_tables.isr_table));

	if (r == 0)
		FUNC2(dsidev);

	FUNC5(&dsi->irq_lock, flags);

	return r;
}