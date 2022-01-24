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
struct bd70528_rtc {int /*<<< orphan*/  mfd; } ;

/* Variables and functions */
 int FUNC0 (struct device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bd70528_rtc* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *t)
{
	int ret;
	struct bd70528_rtc *r = FUNC3(dev);

	FUNC1(r->mfd);
	ret = FUNC0(dev, t);
	FUNC2(r->mfd);
	return ret;
}