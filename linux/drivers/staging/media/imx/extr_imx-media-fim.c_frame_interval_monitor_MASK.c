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
typedef  long long u64 ;
typedef  long long u32 ;
struct imx_media_fim {scalar_t__ counter; long long tolerance_max; scalar_t__ num_avg; unsigned long tolerance_min; int /*<<< orphan*/  last_ts; scalar_t__ sum; TYPE_1__* sd; scalar_t__ nominal; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,scalar_t__) ; 
 long long NSEC_PER_USEC ; 
 long long U32_MAX ; 
 long long FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_media_fim*,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct imx_media_fim *fim,
				   ktime_t timestamp)
{
	long long interval, error;
	unsigned long error_avg;
	bool send_event = false;

	if (!fim->enabled || ++fim->counter <= 0)
		goto out_update_ts;

	/* max error is less than l00µs, so use 32-bit division or fail */
	interval = FUNC4(FUNC3(timestamp, fim->last_ts));
	error = FUNC1(interval - NSEC_PER_USEC * (u64)fim->nominal);
	if (error > U32_MAX)
		error = U32_MAX;
	else
		error = FUNC1((u32)error / NSEC_PER_USEC);

	if (fim->tolerance_max && error >= fim->tolerance_max) {
		FUNC2(fim->sd->dev,
			"FIM: %llu ignored, out of tolerance bounds\n",
			error);
		fim->counter--;
		goto out_update_ts;
	}

	fim->sum += error;

	if (fim->counter == fim->num_avg) {
		error_avg = FUNC0(fim->sum, fim->num_avg);

		if (error_avg > fim->tolerance_min)
			send_event = true;

		FUNC2(fim->sd->dev, "FIM: error: %lu usec%s\n",
			error_avg, send_event ? " (!!!)" : "");

		fim->counter = 0;
		fim->sum = 0;
	}

out_update_ts:
	fim->last_ts = timestamp;
	if (send_event)
		FUNC5(fim, error_avg);
}