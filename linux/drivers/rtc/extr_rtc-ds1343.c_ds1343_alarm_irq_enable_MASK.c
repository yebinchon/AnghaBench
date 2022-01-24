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
struct ds1343_priv {scalar_t__ irq; int /*<<< orphan*/  mutex; int /*<<< orphan*/  irqen; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RTC_AF ; 
 struct ds1343_priv* FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int enabled)
{
	struct ds1343_priv *priv = FUNC0(dev);
	int res = 0;

	if (priv->irq <= 0)
		return -EINVAL;

	FUNC2(&priv->mutex);

	if (enabled)
		priv->irqen |= RTC_AF;
	else
		priv->irqen &= ~RTC_AF;

	res = FUNC1(dev);

	FUNC3(&priv->mutex);

	return res;
}