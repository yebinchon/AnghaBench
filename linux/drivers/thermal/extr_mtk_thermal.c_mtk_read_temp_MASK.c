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
struct mtk_thermal_bank {int dummy; } ;
struct mtk_thermal {struct mtk_thermal_bank* banks; TYPE_1__* conf; } ;
struct TYPE_2__ {int num_banks; } ;

/* Variables and functions */
 int INT_MIN ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_thermal_bank*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_thermal_bank*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_thermal_bank*) ; 

__attribute__((used)) static int FUNC4(void *data, int *temperature)
{
	struct mtk_thermal *mt = data;
	int i;
	int tempmax = INT_MIN;

	for (i = 0; i < mt->conf->num_banks; i++) {
		struct mtk_thermal_bank *bank = &mt->banks[i];

		FUNC2(bank);

		tempmax = FUNC0(tempmax, FUNC1(bank));

		FUNC3(bank);
	}

	*temperature = tempmax;

	return 0;
}