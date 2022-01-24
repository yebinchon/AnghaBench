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
struct TYPE_2__ {int irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  dss_apply_irq_handler ; 
 TYPE_1__ dss_data ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	const int num_mgrs = FUNC3();
	u32 mask;
	int r, i;

	mask = 0;
	for (i = 0; i < num_mgrs; ++i)
		mask |= FUNC2(i);

	for (i = 0; i < num_mgrs; ++i)
		mask |= FUNC1(i);

	r = FUNC4(dss_apply_irq_handler, NULL, mask);
	FUNC0(r);

	dss_data.irq_enabled = false;
}