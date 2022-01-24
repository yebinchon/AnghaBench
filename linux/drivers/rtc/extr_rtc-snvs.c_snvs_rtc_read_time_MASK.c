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
struct snvs_rtc_data {int dummy; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct snvs_rtc_data* FUNC0 (struct device*) ; 
 unsigned long FUNC1 (struct snvs_rtc_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct snvs_rtc_data *data = FUNC0(dev);
	unsigned long time = FUNC1(data);

	FUNC2(time, tm);

	return 0;
}