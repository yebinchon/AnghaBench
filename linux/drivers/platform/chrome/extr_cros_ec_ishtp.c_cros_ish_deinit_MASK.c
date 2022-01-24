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
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISHTP_CL_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC3 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC4 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ishtp_cl *cros_ish_cl)
{
	FUNC4(cros_ish_cl, ISHTP_CL_DISCONNECTING);
	FUNC0(cros_ish_cl);
	FUNC3(cros_ish_cl);
	FUNC1(cros_ish_cl);

	/* Disband and free all Tx and Rx client-level rings */
	FUNC2(cros_ish_cl);
}