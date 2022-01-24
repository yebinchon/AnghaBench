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
struct driver_data {int /*<<< orphan*/  controller; int /*<<< orphan*/  clear_sr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSTO ; 
 int /*<<< orphan*/  FUNC0 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct driver_data *drv_data)
{
	/* Clear and disable interrupts */
	FUNC4(drv_data, drv_data->clear_sr);
	FUNC2(drv_data);
	if (!FUNC0(drv_data))
		FUNC1(drv_data, SSTO, 0);

	FUNC3(drv_data->controller);
}