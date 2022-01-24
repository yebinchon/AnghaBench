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
struct TYPE_2__ {int /*<<< orphan*/  (* disc_start ) (int /*<<< orphan*/ ,struct fc_lport*) ;} ;
struct fc_lport {TYPE_1__ tt; int /*<<< orphan*/  ptp_rdata; scalar_t__ vport; int /*<<< orphan*/  lp_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_VPORT_ACTIVE ; 
 int /*<<< orphan*/  LPORT_ST_READY ; 
 int /*<<< orphan*/  fc_lport_disc_callback ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fc_lport*) ; 

__attribute__((used)) static void FUNC7(struct fc_lport *lport)
{
	FUNC5(&lport->lp_mutex);

	FUNC0(lport, "Entered READY from state %s\n",
		     FUNC1(lport));

	FUNC2(lport, LPORT_ST_READY);
	if (lport->vport)
		FUNC3(lport->vport, FC_VPORT_ACTIVE);
	FUNC4(lport);

	if (!lport->ptp_rdata)
		lport->tt.disc_start(fc_lport_disc_callback, lport);
}