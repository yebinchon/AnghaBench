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
struct rtd119x_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTD_RTCCR ; 
 int /*<<< orphan*/  RTD_RTCCR_RTCRST ; 
 struct rtd119x_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct rtd119x_rtc *data = FUNC0(dev);
	u32 val;

	val = FUNC1(data->base + RTD_RTCCR);
	val |= RTD_RTCCR_RTCRST;
	FUNC3(val, data->base + RTD_RTCCR);

	val &= ~RTD_RTCCR_RTCRST;
	FUNC2(val, data->base + RTD_RTCCR);
}