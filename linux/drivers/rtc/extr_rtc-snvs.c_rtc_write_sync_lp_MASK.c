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
typedef  int u32 ;
struct snvs_rtc_data {TYPE_1__* rtc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct snvs_rtc_data*,int*) ; 

__attribute__((used)) static int FUNC2(struct snvs_rtc_data *data)
{
	u32 count1, count2;
	u32 elapsed;
	unsigned int timeout = 1000;
	int ret;

	ret = FUNC1(data, &count1);
	if (ret)
		return ret;

	/* Wait for 3 CKIL cycles, about 61.0-91.5 µs */
	do {
		ret = FUNC1(data, &count2);
		if (ret)
			return ret;
		elapsed = count2 - count1; /* wrap around _is_ handled! */
	} while (elapsed < 3 && --timeout);
	if (!timeout) {
		FUNC0(&data->rtc->dev, "Timeout waiting for LPSRT Counter to change\n");
		return -ETIMEDOUT;
	}
	return 0;
}