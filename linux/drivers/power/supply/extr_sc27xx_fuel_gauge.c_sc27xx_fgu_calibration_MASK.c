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
typedef  int /*<<< orphan*/  u32 ;
struct sc27xx_fgu_data {int vol_1000mv_adc; int cur_1000ma_adc; int /*<<< orphan*/  dev; } ;
typedef  void nvmem_cell ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (void*,size_t*) ; 

__attribute__((used)) static int FUNC9(struct sc27xx_fgu_data *data)
{
	struct nvmem_cell *cell;
	int calib_data, cal_4200mv;
	void *buf;
	size_t len;

	cell = FUNC6(data->dev, "fgu_calib");
	if (FUNC1(cell))
		return FUNC2(cell);

	buf = FUNC8(cell, &len);
	FUNC7(cell);

	if (FUNC1(buf))
		return FUNC2(buf);

	FUNC4(&calib_data, buf, FUNC5(len, sizeof(u32)));

	/*
	 * Get the ADC value corresponding to 4200 mV from eFuse controller
	 * according to below formula. Then convert to ADC values corresponding
	 * to 1000 mV and 1000 mA.
	 */
	cal_4200mv = (calib_data & 0x1ff) + 6963 - 4096 - 256;
	data->vol_1000mv_adc = FUNC0(cal_4200mv * 10, 42);
	data->cur_1000ma_adc = data->vol_1000mv_adc * 4;

	FUNC3(buf);
	return 0;
}