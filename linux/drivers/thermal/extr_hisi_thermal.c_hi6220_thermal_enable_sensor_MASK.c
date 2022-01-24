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
struct hisi_thermal_sensor {int /*<<< orphan*/  thres_temp; int /*<<< orphan*/  id; struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {int /*<<< orphan*/  regs; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  HI6220_TEMP_LAG ; 
 int /*<<< orphan*/  HI6220_TEMP_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct hisi_thermal_sensor *sensor)
{
	struct hisi_thermal_data *data = sensor->data;
	int ret;

	/* enable clock for tsensor */
	ret = FUNC0(data->clk);
	if (ret)
		return ret;

	/* disable module firstly */
	FUNC6(data->regs, 0);
	FUNC4(data->regs, 0);

	/* select sensor id */
	FUNC8(data->regs, sensor->id);

	/* setting the hdak time */
	FUNC5(data->regs, 0);

	/* setting lag value between current temp and the threshold */
	FUNC9(data->regs, HI6220_TEMP_LAG);

	/* enable for interrupt */
	FUNC3(data->regs, sensor->thres_temp);

	FUNC7(data->regs, HI6220_TEMP_RESET);

	/* enable module */
	FUNC6(data->regs, 1);
	FUNC4(data->regs, 1);

	FUNC1(data->regs, 0);
	FUNC2(data->regs, 1);

	return 0;
}