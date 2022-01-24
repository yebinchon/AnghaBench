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
struct platform_device {int dummy; } ;
struct dsi_data {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  isr_tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC3(dsidev);
	unsigned long flags;
	int vc;

	FUNC5(&dsi->irq_lock, flags);

	FUNC4(&dsi->isr_tables, 0, sizeof(dsi->isr_tables));

	FUNC0(dsidev);
	for (vc = 0; vc < 4; ++vc)
		FUNC2(dsidev, vc);
	FUNC1(dsidev);

	FUNC6(&dsi->irq_lock, flags);
}