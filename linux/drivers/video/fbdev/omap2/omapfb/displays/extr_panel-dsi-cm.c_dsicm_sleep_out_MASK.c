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
struct panel_drv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int FUNC0 (struct panel_drv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct panel_drv_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct panel_drv_data *ddata)
{
	int r;

	FUNC2(ddata);

	r = FUNC0(ddata, MIPI_DCS_EXIT_SLEEP_MODE);
	if (r)
		return r;

	FUNC1(ddata, 120);

	FUNC3(5000, 10000);

	return 0;
}