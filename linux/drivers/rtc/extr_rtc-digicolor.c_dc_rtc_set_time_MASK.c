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
struct device {int dummy; } ;
struct dc_rtc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dc_rtc*,int /*<<< orphan*/ ) ; 
 struct dc_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct dc_rtc *rtc = FUNC1(dev);

	return FUNC0(rtc, FUNC2(tm));
}