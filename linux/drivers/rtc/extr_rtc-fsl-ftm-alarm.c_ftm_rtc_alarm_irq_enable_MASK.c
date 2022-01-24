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
struct ftm_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ftm_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftm_rtc*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
		unsigned int enabled)
{
	struct ftm_rtc *rtc = FUNC0(dev);

	if (enabled)
		FUNC2(rtc);
	else
		FUNC1(rtc);

	return 0;
}