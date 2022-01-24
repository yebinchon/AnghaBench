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
struct driver_data {int ssp_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CE4100_SSP 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  QUARK_X1000_SSP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct driver_data *drv_data,
				   u32 *sccr1_reg, u32 threshold)
{
	switch (drv_data->ssp_type) {
	case QUARK_X1000_SSP:
		*sccr1_reg |= FUNC1(threshold);
		break;
	case CE4100_SSP:
		*sccr1_reg |= FUNC0(threshold);
		break;
	default:
		*sccr1_reg |= FUNC2(threshold);
		break;
	}
}