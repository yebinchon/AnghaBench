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
typedef  int u32 ;
struct rtd119x_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTD_RTCEN ; 
 int RTD_RTCEN_RTCEN_MASK ; 
 struct rtd119x_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct device *dev, bool enable)
{
	struct rtd119x_rtc *data = FUNC0(dev);
	u32 val;

	val = FUNC1(data->base + RTD_RTCEN);
	if (enable) {
		if ((val & RTD_RTCEN_RTCEN_MASK) == 0x5a)
			return;
		FUNC2(0x5a, data->base + RTD_RTCEN);
	} else {
		FUNC2(0, data->base + RTD_RTCEN);
	}
}