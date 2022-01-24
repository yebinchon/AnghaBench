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
struct rtc7301_priv {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct rtc7301_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc7301_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc7301_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc7301_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc7301_priv*,struct rtc_time*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_time *tm)
{
	struct rtc7301_priv *priv = FUNC0(dev);
	unsigned long flags;

	FUNC5(&priv->lock, flags);

	FUNC3(priv);
	FUNC7(300);
	FUNC1(priv, 0);
	FUNC4(priv, tm, false);
	FUNC2(priv);

	FUNC6(&priv->lock, flags);

	return 0;
}