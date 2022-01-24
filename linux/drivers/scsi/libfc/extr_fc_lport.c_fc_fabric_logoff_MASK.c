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
struct TYPE_2__ {int /*<<< orphan*/  (* disc_stop_final ) (struct fc_lport*) ;} ;
struct fc_lport {int /*<<< orphan*/  retry_work; int /*<<< orphan*/  lp_mutex; scalar_t__ dns_rdata; TYPE_1__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*) ; 

int FUNC7(struct fc_lport *lport)
{
	lport->tt.disc_stop_final(lport);
	FUNC4(&lport->lp_mutex);
	if (lport->dns_rdata)
		FUNC3(lport->dns_rdata);
	FUNC5(&lport->lp_mutex);
	FUNC2();
	FUNC4(&lport->lp_mutex);
	FUNC1(lport);
	FUNC5(&lport->lp_mutex);
	FUNC0(&lport->retry_work);
	return 0;
}