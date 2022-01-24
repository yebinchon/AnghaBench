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
struct TYPE_3__ {int se_active; int /*<<< orphan*/  req_completion; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  se_active_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct st21nfca_hci_info* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct st21nfca_hci_info* info ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ se_info ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct st21nfca_hci_info *info = FUNC1(info, t,
						    se_info.se_active_timer);

	FUNC2("\n");

	info->se_info.se_active = false;

	FUNC0(&info->se_info.req_completion);
}