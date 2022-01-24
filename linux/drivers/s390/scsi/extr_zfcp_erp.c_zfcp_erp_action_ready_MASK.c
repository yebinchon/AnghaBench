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
struct zfcp_erp_action {struct zfcp_adapter* adapter; int /*<<< orphan*/  list; } ;
struct zfcp_adapter {int /*<<< orphan*/  erp_ready_wq; int /*<<< orphan*/  erp_ready_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct zfcp_erp_action*) ; 

__attribute__((used)) static void FUNC3(struct zfcp_erp_action *act)
{
	struct zfcp_adapter *adapter = act->adapter;

	FUNC0(&act->list, &act->adapter->erp_ready_head);
	FUNC2("erardy1", act);
	FUNC1(&adapter->erp_ready_wq);
	FUNC2("erardy2", act);
}