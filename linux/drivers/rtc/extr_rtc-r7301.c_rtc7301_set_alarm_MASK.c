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
struct rtc_wkalrm {int /*<<< orphan*/  enabled; int /*<<< orphan*/  time; } ;
struct rtc7301_priv {scalar_t__ irq; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct rtc7301_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc7301_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc7301_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc7301_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct rtc7301_priv *priv = FUNC0(dev);
	unsigned long flags;

	if (priv->irq <= 0)
		return -EINVAL;

	FUNC4(&priv->lock, flags);

	FUNC2(priv, 1);
	FUNC3(priv, &alarm->time, true);
	FUNC1(priv, alarm->enabled);

	FUNC5(&priv->lock, flags);

	return 0;
}