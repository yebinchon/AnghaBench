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
typedef  int /*<<< orphan*/  u32 ;
struct fc_lport {int state; int /*<<< orphan*/  lp_mutex; } ;

/* Variables and functions */
#define  LPORT_ST_FLOGI 129 
#define  LPORT_ST_RESET 128 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fc_lport *lport, u32 port_id)
{
	FUNC2(&lport->lp_mutex);

	FUNC1(lport, port_id, NULL);

	switch (lport->state) {
	case LPORT_ST_RESET:
	case LPORT_ST_FLOGI:
		if (port_id)
			FUNC0(lport);
		break;
	default:
		break;
	}
	FUNC3(&lport->lp_mutex);
}