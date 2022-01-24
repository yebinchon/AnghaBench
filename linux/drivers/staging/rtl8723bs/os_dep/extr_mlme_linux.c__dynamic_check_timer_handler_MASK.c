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
struct TYPE_3__ {int /*<<< orphan*/  dynamic_chk_timer; } ;
struct adapter {TYPE_1__ mlmepriv; } ;
struct TYPE_4__ {int /*<<< orphan*/  dynamic_chk_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct adapter* adapter ; 
 struct adapter* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_2__ mlmepriv ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct adapter *adapter =
		FUNC1(adapter, t, mlmepriv.dynamic_chk_timer);

	FUNC2(adapter);

	FUNC0(&adapter->mlmepriv.dynamic_chk_timer, 2000);
}