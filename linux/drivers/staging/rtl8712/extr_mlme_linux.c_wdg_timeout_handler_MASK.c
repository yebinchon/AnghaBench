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
struct TYPE_3__ {int /*<<< orphan*/  wdg_timer; } ;
struct _adapter {TYPE_1__ mlmepriv; } ;
struct TYPE_4__ {int /*<<< orphan*/  wdg_timer; } ;

/* Variables and functions */
 struct _adapter* adapter ; 
 struct _adapter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 TYPE_2__ mlmepriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*) ; 

__attribute__((used)) static void FUNC4 (struct timer_list *t)
{
	struct _adapter *adapter =
		FUNC0(adapter, t, mlmepriv.wdg_timer);

	FUNC3(adapter);

	FUNC1(&adapter->mlmepriv.wdg_timer,
		  jiffies + FUNC2(2000));
}