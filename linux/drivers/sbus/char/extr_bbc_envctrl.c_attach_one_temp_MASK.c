#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct bbc_i2c_bus {int /*<<< orphan*/  temps; } ;
struct bbc_cpu_temperature {int index; void** fan_todo; int /*<<< orphan*/  curr_amb_temp; int /*<<< orphan*/  avg_amb_temp; int /*<<< orphan*/  prev_amb_temp; int /*<<< orphan*/  curr_cpu_temp; int /*<<< orphan*/  avg_cpu_temp; int /*<<< orphan*/  prev_cpu_temp; int /*<<< orphan*/  client; int /*<<< orphan*/  bp_list; int /*<<< orphan*/  glob_list; } ;
struct TYPE_4__ {int high_pwroff; int low_pwroff; } ;
struct TYPE_3__ {int high_pwroff; int low_pwroff; } ;

/* Variables and functions */
 size_t FAN_AMBIENT ; 
 size_t FAN_CPU ; 
 void* FAN_SAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX1617_WR_AMB_HIGHLIM ; 
 int /*<<< orphan*/  MAX1617_WR_AMB_LOWLIM ; 
 int /*<<< orphan*/  MAX1617_WR_CFG_BYTE ; 
 int /*<<< orphan*/  MAX1617_WR_CPU_HIGHLIM ; 
 int /*<<< orphan*/  MAX1617_WR_CPU_LOWLIM ; 
 int /*<<< orphan*/  MAX1617_WR_CVRATE_BYTE ; 
 int /*<<< orphan*/  all_temps ; 
 TYPE_2__* amb_temp_limits ; 
 int /*<<< orphan*/  FUNC1 (struct bbc_i2c_bus*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* cpu_temp_limits ; 
 int /*<<< orphan*/  FUNC3 (struct bbc_cpu_temperature*) ; 
 int /*<<< orphan*/  FUNC4 (struct bbc_cpu_temperature*) ; 
 struct bbc_cpu_temperature* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bbc_i2c_bus *bp, struct platform_device *op,
			    int temp_idx)
{
	struct bbc_cpu_temperature *tp;

	tp = FUNC5(sizeof(*tp), GFP_KERNEL);
	if (!tp)
		return;

	FUNC0(&tp->bp_list);
	FUNC0(&tp->glob_list);

	tp->client = FUNC1(bp, op);
	if (!tp->client) {
		FUNC4(tp);
		return;
	}


	tp->index = temp_idx;

	FUNC6(&tp->glob_list, &all_temps);
	FUNC6(&tp->bp_list, &bp->temps);

	/* Tell it to convert once every 5 seconds, clear all cfg
	 * bits.
	 */
	FUNC2(tp->client, 0x00, MAX1617_WR_CFG_BYTE);
	FUNC2(tp->client, 0x02, MAX1617_WR_CVRATE_BYTE);

	/* Program the hard temperature limits into the chip. */
	FUNC2(tp->client, amb_temp_limits[tp->index].high_pwroff,
		       MAX1617_WR_AMB_HIGHLIM);
	FUNC2(tp->client, amb_temp_limits[tp->index].low_pwroff,
		       MAX1617_WR_AMB_LOWLIM);
	FUNC2(tp->client, cpu_temp_limits[tp->index].high_pwroff,
		       MAX1617_WR_CPU_HIGHLIM);
	FUNC2(tp->client, cpu_temp_limits[tp->index].low_pwroff,
		       MAX1617_WR_CPU_LOWLIM);

	FUNC3(tp);
	tp->prev_cpu_temp = tp->avg_cpu_temp = tp->curr_cpu_temp;
	tp->prev_amb_temp = tp->avg_amb_temp = tp->curr_amb_temp;

	tp->fan_todo[FAN_AMBIENT] = FAN_SAME;
	tp->fan_todo[FAN_CPU] = FAN_SAME;
}