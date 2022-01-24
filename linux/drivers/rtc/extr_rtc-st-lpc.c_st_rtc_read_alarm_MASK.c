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
struct st_rtc {int /*<<< orphan*/  lock; int /*<<< orphan*/  alarm; } ;
struct rtc_wkalrm {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct st_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_wkalrm*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	struct st_rtc *rtc = FUNC0(dev);
	unsigned long flags;

	FUNC2(&rtc->lock, flags);

	FUNC1(wkalrm, &rtc->alarm, sizeof(struct rtc_wkalrm));

	FUNC3(&rtc->lock, flags);

	return 0;
}