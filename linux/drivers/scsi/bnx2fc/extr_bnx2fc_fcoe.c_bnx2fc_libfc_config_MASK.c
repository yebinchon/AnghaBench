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
struct fc_lport {int /*<<< orphan*/  tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  bnx2fc_libfc_fcn_templ ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct fc_lport *lport)
{

	/* Set the function pointers set by bnx2fc driver */
	FUNC4(&lport->tt, &bnx2fc_libfc_fcn_templ,
		sizeof(struct libfc_function_template));
	FUNC2(lport);
	FUNC3(lport);
	FUNC1(lport);
	FUNC0(lport, lport);
	return 0;
}