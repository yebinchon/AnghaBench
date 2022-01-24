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
struct TYPE_2__ {scalar_t__ revision; int /*<<< orphan*/  io_lock; scalar_t__ io_addr; } ;

/* Variables and functions */
 scalar_t__ DEBUG ; 
 scalar_t__ PCWD_REVISION_C ; 
 scalar_t__ VERBOSE ; 
 int WD_REVC_R2DS ; 
 scalar_t__ debug ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 TYPE_1__ pcwd_private ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	int control_status;

	if (pcwd_private.revision == PCWD_REVISION_C) {
		FUNC4(&pcwd_private.io_lock);

		if (debug >= VERBOSE)
			FUNC3("clearing watchdog trip status\n");

		control_status = FUNC0(pcwd_private.io_addr + 1);

		if (debug >= DEBUG) {
			FUNC2("status was: 0x%02x\n", control_status);
			FUNC2("sending: 0x%02x\n",
				 (control_status & WD_REVC_R2DS));
		}

		/* clear reset status & Keep Relay 2 disable state as it is */
		FUNC1((control_status & WD_REVC_R2DS),
						pcwd_private.io_addr + 1);

		FUNC5(&pcwd_private.io_lock);
	}
	return 0;
}