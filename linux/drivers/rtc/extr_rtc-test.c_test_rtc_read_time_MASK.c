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
struct rtc_time {int dummy; } ;
struct rtc_test_data {scalar_t__ offset; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct rtc_test_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct rtc_test_data *rtd = FUNC0(dev);

	FUNC2(FUNC1() + rtd->offset, tm);

	return 0;
}