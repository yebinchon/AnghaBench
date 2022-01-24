#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  watchdog_wq; int /*<<< orphan*/  rtl_wq; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct TYPE_4__ {int /*<<< orphan*/  watchdog_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTL_WATCH_DOG_TIME ; 
 struct rtl_priv* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl_priv* rtlpriv ; 
 TYPE_2__ works ; 

void FUNC4(struct timer_list *t)
{
	struct rtl_priv *rtlpriv = FUNC1(rtlpriv, t, works.watchdog_timer);

	FUNC3(rtlpriv->works.rtl_wq,
			   &rtlpriv->works.watchdog_wq, 0);

	FUNC2(&rtlpriv->works.watchdog_timer,
		  jiffies + FUNC0(RTL_WATCH_DOG_TIME));
}