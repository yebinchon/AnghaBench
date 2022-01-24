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
struct ucsi_control {int dummy; } ;
struct ucsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucsi_control,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCSI_ENABLE_NTFY_ALL ; 
 int FUNC1 (struct ucsi*,struct ucsi_control*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct ucsi *ucsi)
{
	struct ucsi_control ctrl;

	/* Restore UCSI notification enable mask after system resume */
	FUNC0(ctrl, UCSI_ENABLE_NTFY_ALL);
	return FUNC1(ucsi, &ctrl, NULL, 0);
}