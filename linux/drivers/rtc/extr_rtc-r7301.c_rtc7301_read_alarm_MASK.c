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
typedef  int u8 ;
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct rtc7301_priv {scalar_t__ irq; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RTC7301_ALARM_CONTROL ; 
 int RTC7301_ALARM_CONTROL_AF ; 
 int RTC7301_ALARM_CONTROL_AIE ; 
 struct rtc7301_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc7301_priv*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct rtc7301_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc7301_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct rtc7301_priv *priv = FUNC0(dev);
	unsigned long flags;
	u8 alrm_ctrl;

	if (priv->irq <= 0)
		return -EINVAL;

	FUNC4(&priv->lock, flags);

	FUNC3(priv, 1);
	FUNC1(priv, &alarm->time, true);

	alrm_ctrl = FUNC2(priv, RTC7301_ALARM_CONTROL);

	alarm->enabled = !!(alrm_ctrl & RTC7301_ALARM_CONTROL_AIE);
	alarm->pending = !!(alrm_ctrl & RTC7301_ALARM_CONTROL_AF);

	FUNC5(&priv->lock, flags);

	return 0;
}