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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {TYPE_1__ dev; } ;
struct rtc7301_priv {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  RTC7301_ALARM_CONTROL ; 
 int RTC7301_ALARM_CONTROL_AF ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 struct rtc7301_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc7301_priv*,int) ; 
 int FUNC2 (struct rtc7301_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc7301_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct rtc_device *rtc = dev_id;
	struct rtc7301_priv *priv = FUNC0(rtc->dev.parent);
	unsigned long flags;
	irqreturn_t ret = IRQ_NONE;
	u8 alrm_ctrl;

	FUNC5(&priv->lock, flags);

	FUNC3(priv, 1);

	alrm_ctrl = FUNC2(priv, RTC7301_ALARM_CONTROL);
	if (alrm_ctrl & RTC7301_ALARM_CONTROL_AF) {
		ret = IRQ_HANDLED;
		FUNC1(priv, false);
		FUNC4(rtc, 1, RTC_IRQF | RTC_AF);
	}

	FUNC6(&priv->lock, flags);

	return ret;
}