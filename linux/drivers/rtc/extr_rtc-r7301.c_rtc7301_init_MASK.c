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
struct rtc7301_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC7301_TIMER_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct rtc7301_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc7301_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct rtc7301_priv *priv)
{
	unsigned long flags;

	FUNC2(&priv->lock, flags);

	FUNC0(priv, 2);
	FUNC1(priv, 0, RTC7301_TIMER_CONTROL);

	FUNC3(&priv->lock, flags);
}