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

/* Variables and functions */
 int /*<<< orphan*/  EXT_IRQ_CP_SERVICE ; 
 int /*<<< orphan*/  IRQ_SUBCLASS_SERVICE_SIGNAL ; 
 int /*<<< orphan*/  diag_ftp_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	int rc;

	rc = FUNC1(EXT_IRQ_CP_SERVICE, diag_ftp_handler);
	if (rc)
		return rc;

	FUNC0(IRQ_SUBCLASS_SERVICE_SIGNAL);
	return 0;
}