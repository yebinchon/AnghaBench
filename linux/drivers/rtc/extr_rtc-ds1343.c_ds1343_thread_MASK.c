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
struct ds1343_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rtc; int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int DS1343_A0IE ; 
 int /*<<< orphan*/  DS1343_CONTROL_REG ; 
 unsigned int DS1343_IRQF0 ; 
 int /*<<< orphan*/  DS1343_STATUS_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct ds1343_priv *priv = dev_id;
	unsigned int stat, control;
	int res = 0;

	FUNC0(&priv->mutex);

	res = FUNC2(priv->map, DS1343_STATUS_REG, &stat);
	if (res)
		goto out;

	if (stat & DS1343_IRQF0) {
		stat &= ~DS1343_IRQF0;
		FUNC3(priv->map, DS1343_STATUS_REG, stat);

		res = FUNC2(priv->map, DS1343_CONTROL_REG, &control);
		if (res)
			goto out;

		control &= ~DS1343_A0IE;
		FUNC3(priv->map, DS1343_CONTROL_REG, control);

		FUNC4(priv->rtc, 1, RTC_AF | RTC_IRQF);
	}

out:
	FUNC1(&priv->mutex);
	return IRQ_HANDLED;
}