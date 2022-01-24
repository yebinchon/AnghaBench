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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct r8192_priv {int /*<<< orphan*/  ps_lock; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_sleep_wq; int /*<<< orphan*/  hw_wakeup_wq; } ;

/* Variables and functions */
 int MAX_SLEEP_TIME ; 
 int MIN_SLEEP_TIME ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,scalar_t__,unsigned long) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

void FUNC8(struct net_device *dev, u64 time)
{
	struct r8192_priv *priv = FUNC2(dev);

	u32 tmp;
	unsigned long flags;
	unsigned long timeout;

	FUNC4(&priv->ps_lock, flags);

	time -= FUNC0(8 + 16 + 7);

	timeout = jiffies + FUNC0(MIN_SLEEP_TIME);
	if (FUNC7((unsigned long)time, timeout)) {
		FUNC5(&priv->ps_lock, flags);
		FUNC1(dev, "too short to sleep::%lld < %ld\n",
			    time - jiffies, FUNC0(MIN_SLEEP_TIME));
		return;
	}
	timeout = jiffies + FUNC0(MAX_SLEEP_TIME);
	if (FUNC6((unsigned long)time, timeout)) {
		FUNC1(dev, "========>too long to sleep:%lld > %ld\n",
			    time - jiffies, FUNC0(MAX_SLEEP_TIME));
		FUNC5(&priv->ps_lock, flags);
		return;
	}
	tmp = time - jiffies;
	FUNC3(&priv->rtllib->hw_wakeup_wq, tmp);
	FUNC3(&priv->rtllib->hw_sleep_wq, 0);
	FUNC5(&priv->ps_lock, flags);
}