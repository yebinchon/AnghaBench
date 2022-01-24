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
struct mtk_thermal_data {TYPE_1__* bank_data; scalar_t__* msr; } ;
struct mtk_thermal_bank {size_t id; struct mtk_thermal* mt; } ;
struct mtk_thermal {scalar_t__ thermal_base; struct mtk_thermal_data* conf; } ;
struct TYPE_2__ {int num_sensors; size_t* sensors; } ;

/* Variables and functions */
 int INT_MIN ; 
 int FUNC0 (struct mtk_thermal*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mtk_thermal_bank *bank)
{
	struct mtk_thermal *mt = bank->mt;
	const struct mtk_thermal_data *conf = mt->conf;
	int i, temp = INT_MIN, max = INT_MIN;
	u32 raw;

	for (i = 0; i < conf->bank_data[bank->id].num_sensors; i++) {
		raw = FUNC1(mt->thermal_base +
			    conf->msr[conf->bank_data[bank->id].sensors[i]]);

		temp = FUNC0(mt,
				       conf->bank_data[bank->id].sensors[i],
				       raw);

		/*
		 * The first read of a sensor often contains very high bogus
		 * temperature value. Filter these out so that the system does
		 * not immediately shut down.
		 */
		if (temp > 200000)
			temp = 0;

		if (temp > max)
			max = temp;
	}

	return max;
}