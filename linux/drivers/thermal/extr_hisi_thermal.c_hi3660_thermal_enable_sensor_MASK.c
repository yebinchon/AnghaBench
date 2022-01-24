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
struct hisi_thermal_sensor {int /*<<< orphan*/  id; int /*<<< orphan*/  thres_temp; struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  HI3660_TEMP_LAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hisi_thermal_sensor *sensor)
{
	unsigned int value;
	struct hisi_thermal_data *data = sensor->data;

	/* disable interrupt */
	FUNC1(data->regs, sensor->id, 0);

	/* setting lag value between current temp and the threshold */
	FUNC3(data->regs, sensor->id, HI3660_TEMP_LAG);

	/* set interrupt threshold */
	value = FUNC4(sensor->thres_temp);
	FUNC2(data->regs, sensor->id, value);

	/* enable interrupt */
	FUNC0(data->regs, sensor->id, 1);
	FUNC1(data->regs, sensor->id, 1);

	return 0;
}