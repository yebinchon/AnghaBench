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
typedef  int u8 ;
struct thermal_trip {int temperature; } ;
struct exynos_tmu_data {scalar_t__ base; int /*<<< orphan*/  tzd; } ;

/* Variables and functions */
 scalar_t__ EXYNOS4210_TMU_REG_THRESHOLD_TEMP ; 
 scalar_t__ EXYNOS4210_TMU_REG_TRIG_LEVEL0 ; 
 int MCELSIUS ; 
 struct thermal_trip* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct exynos_tmu_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct exynos_tmu_data *data,
					 int trip, u8 temp)
{
	const struct thermal_trip * const trips =
		FUNC0(data->tzd);
	u8 ref, th_code;

	ref = trips[0].temperature / MCELSIUS;

	if (trip == 0) {
		th_code = FUNC1(data, ref);
		FUNC2(th_code, data->base + EXYNOS4210_TMU_REG_THRESHOLD_TEMP);
	}

	temp -= ref;
	FUNC2(temp, data->base + EXYNOS4210_TMU_REG_TRIG_LEVEL0 + trip * 4);
}