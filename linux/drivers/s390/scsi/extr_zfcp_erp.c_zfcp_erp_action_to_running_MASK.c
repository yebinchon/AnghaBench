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
struct zfcp_erp_action {TYPE_1__* adapter; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  erp_running_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct zfcp_erp_action*) ; 

__attribute__((used)) static void FUNC2(struct zfcp_erp_action *erp_action)
{
	FUNC0(&erp_action->list, &erp_action->adapter->erp_running_head);
	FUNC1("erator1", erp_action);
}