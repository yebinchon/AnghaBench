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
struct ds1343_priv {scalar_t__ alarm_sec; int irqen; scalar_t__ alarm_min; scalar_t__ alarm_hour; scalar_t__ alarm_mday; int /*<<< orphan*/  map; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int DS1343_A0IE ; 
 int /*<<< orphan*/  DS1343_ALM0_SEC_REG ; 
 int /*<<< orphan*/  DS1343_CONTROL_REG ; 
 unsigned int DS1343_IRQF0 ; 
 int /*<<< orphan*/  DS1343_STATUS_REG ; 
 int RTC_UF ; 
 int FUNC0 (scalar_t__) ; 
 struct ds1343_priv* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct ds1343_priv *priv = FUNC1(dev);
	unsigned int control, stat;
	unsigned char buf[4];
	int res = 0;

	res = FUNC3(priv->map, DS1343_CONTROL_REG, &control);
	if (res)
		return res;

	res = FUNC3(priv->map, DS1343_STATUS_REG, &stat);
	if (res)
		return res;

	control &= ~(DS1343_A0IE);
	stat &= ~(DS1343_IRQF0);

	res = FUNC4(priv->map, DS1343_CONTROL_REG, control);
	if (res)
		return res;

	res = FUNC4(priv->map, DS1343_STATUS_REG, stat);
	if (res)
		return res;

	buf[0] = priv->alarm_sec < 0 || (priv->irqen & RTC_UF) ?
		0x80 : FUNC0(priv->alarm_sec) & 0x7F;
	buf[1] = priv->alarm_min < 0 || (priv->irqen & RTC_UF) ?
		0x80 : FUNC0(priv->alarm_min) & 0x7F;
	buf[2] = priv->alarm_hour < 0 || (priv->irqen & RTC_UF) ?
		0x80 : FUNC0(priv->alarm_hour) & 0x3F;
	buf[3] = priv->alarm_mday < 0 || (priv->irqen & RTC_UF) ?
		0x80 : FUNC0(priv->alarm_mday) & 0x7F;

	res = FUNC2(priv->map, DS1343_ALM0_SEC_REG, buf, 4);
	if (res)
		return res;

	if (priv->irqen) {
		control |= DS1343_A0IE;
		res = FUNC4(priv->map, DS1343_CONTROL_REG, control);
	}

	return res;
}