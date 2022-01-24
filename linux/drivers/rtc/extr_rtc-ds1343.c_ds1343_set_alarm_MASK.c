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
struct TYPE_2__ {int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct ds1343_priv {scalar_t__ irq; int /*<<< orphan*/  mutex; int /*<<< orphan*/  irqen; int /*<<< orphan*/  alarm_mday; int /*<<< orphan*/  alarm_hour; int /*<<< orphan*/  alarm_min; int /*<<< orphan*/  alarm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RTC_AF ; 
 struct ds1343_priv* FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct ds1343_priv *priv = FUNC0(dev);
	int res = 0;

	if (priv->irq <= 0)
		return -EINVAL;

	FUNC2(&priv->mutex);

	priv->alarm_sec = alarm->time.tm_sec;
	priv->alarm_min = alarm->time.tm_min;
	priv->alarm_hour = alarm->time.tm_hour;
	priv->alarm_mday = alarm->time.tm_mday;

	if (alarm->enabled)
		priv->irqen |= RTC_AF;

	res = FUNC1(dev);

	FUNC3(&priv->mutex);

	return res;
}