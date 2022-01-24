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
struct fc_lport {scalar_t__ state; int /*<<< orphan*/  lp_mutex; } ;

/* Variables and functions */
 scalar_t__ LPORT_ST_DISABLED ; 
 scalar_t__ LPORT_ST_LOGO ; 
 int /*<<< orphan*/  LPORT_ST_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct fc_lport *lport)
{
	int rc = -1;

	FUNC2(&lport->lp_mutex);
	if (lport->state == LPORT_ST_DISABLED ||
	    lport->state == LPORT_ST_LOGO) {
		FUNC1(lport, LPORT_ST_RESET);
		FUNC0(lport);
		rc = 0;
	}
	FUNC3(&lport->lp_mutex);

	return rc;
}