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
struct udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_exit ; 
 int /*<<< orphan*/  on_pollstall_exit ; 
 int /*<<< orphan*/  stop_pollstall_timer ; 
 int /*<<< orphan*/  stop_timer ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * udc ; 
 int /*<<< orphan*/  udc_pollstall_timer ; 
 int /*<<< orphan*/  udc_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct udc *dev)
{
	/* remove timer */
	stop_timer++;
	if (FUNC1(&udc_timer))
		FUNC2(&on_exit);
	FUNC0(&udc_timer);
	/* remove pollstall timer */
	stop_pollstall_timer++;
	if (FUNC1(&udc_pollstall_timer))
		FUNC2(&on_pollstall_exit);
	FUNC0(&udc_pollstall_timer);
	udc = NULL;
}