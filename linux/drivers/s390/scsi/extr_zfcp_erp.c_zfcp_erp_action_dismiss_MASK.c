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
struct zfcp_erp_action {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_ERP_DISMISSED ; 
 scalar_t__ FUNC0 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_erp_action*) ; 

__attribute__((used)) static void FUNC2(struct zfcp_erp_action *act)
{
	act->status |= ZFCP_STATUS_ERP_DISMISSED;
	if (FUNC0(act))
		FUNC1(act);
}