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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {int /*<<< orphan*/  odmpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int*,int*,int*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int,scalar_t__*) ; 

void FUNC4(struct adapter *adapt,
					 u8 *pwr_level_ofdm,
					 u8 *pwr_level_bw20,
					 u8 *pwr_level_bw40, u8 channel)
{
	u32 write_val[2], powerbase0[2], powerbase1[2], pwrtrac_value;
	u8 direction;
	u8 index = 0;

	FUNC1(adapt, pwr_level_ofdm, pwr_level_bw20, pwr_level_bw40,
			channel, &powerbase0[0], &powerbase1[0]);

	FUNC2(&adapt->HalData->odmpriv, 0,
					&direction, &pwrtrac_value);

	for (index = 0; index < 6; index++) {
		FUNC0(adapt, channel, index,
					&powerbase0[0], &powerbase1[0],
					&write_val[0]);

		if (direction == 1) {
			write_val[0] += pwrtrac_value;
			write_val[1] += pwrtrac_value;
		} else if (direction == 2) {
			write_val[0] -= pwrtrac_value;
			write_val[1] -= pwrtrac_value;
		}
		FUNC3(adapt, index, &write_val[0]);
	}
}