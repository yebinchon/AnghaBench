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
struct rtc7301_priv {scalar_t__ irq; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct rtc7301_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc7301_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc7301_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int enabled)
{
	struct rtc7301_priv *priv = FUNC0(dev);
	unsigned long flags;

	if (priv->irq <= 0)
		return -EINVAL;

	FUNC3(&priv->lock, flags);

	FUNC2(priv, 1);
	FUNC1(priv, enabled);

	FUNC4(&priv->lock, flags);

	return 0;
}