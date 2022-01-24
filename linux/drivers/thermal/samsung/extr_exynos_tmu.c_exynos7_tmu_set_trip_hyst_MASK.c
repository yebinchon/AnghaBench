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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct exynos_tmu_data {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ EXYNOS7_THD_TEMP_FALL7_6 ; 
 int EXYNOS7_TMU_TEMP_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct exynos_tmu_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct exynos_tmu_data *data,
				      int trip, u8 temp, u8 hyst)
{
	unsigned int reg_off, bit_off;
	u32 th;

	reg_off = ((7 - trip) / 2) * 4;
	bit_off = ((8 - trip) % 2);

	th = FUNC0(data->base + EXYNOS7_THD_TEMP_FALL7_6 + reg_off);
	th &= ~(EXYNOS7_TMU_TEMP_MASK << (16 * bit_off));
	th |= FUNC1(data, temp - hyst) << (16 * bit_off);
	FUNC2(th, data->base + EXYNOS7_THD_TEMP_FALL7_6 + reg_off);
}