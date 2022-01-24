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
struct libfc_function_template {int dummy; } ;
struct fcoe_ctlr {int /*<<< orphan*/  mode; } ;
struct fc_lport {int /*<<< orphan*/  tt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 scalar_t__ FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*,struct fcoe_ctlr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct libfc_function_template const*,int) ; 

int FUNC7(struct fc_lport *lport, struct fcoe_ctlr *fip,
		      const struct libfc_function_template *tt, int init_fcp)
{
	/* Set the function pointers set by the LLDD */
	FUNC6(&lport->tt, tt, sizeof(*tt));
	if (init_fcp && FUNC3(lport))
		return -ENOMEM;
	FUNC2(lport);
	FUNC1(lport);
	FUNC4(lport);
	FUNC0(lport);
	FUNC5(lport, fip, fip->mode);
	return 0;
}