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
struct us_data {int /*<<< orphan*/  current_urb; int /*<<< orphan*/  extra; int /*<<< orphan*/  (* extra_destructor ) (int /*<<< orphan*/ ) ;scalar_t__ ctl_thread; int /*<<< orphan*/  cmnd_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*,char*) ; 

__attribute__((used)) static void FUNC6(struct us_data *us)
{
	/*
	 * Tell the control thread to exit.  The SCSI host must
	 * already have been removed and the DISCONNECTING flag set
	 * so that we won't accept any more commands.
	 */
	FUNC5(us, "-- sending exit command to thread\n");
	FUNC0(&us->cmnd_ready);
	if (us->ctl_thread)
		FUNC2(us->ctl_thread);

	/* Call the destructor routine, if it exists */
	if (us->extra_destructor) {
		FUNC5(us, "-- calling extra_destructor()\n");
		us->extra_destructor(us->extra);
	}

	/* Free the extra data and the URB */
	FUNC1(us->extra);
	FUNC4(us->current_urb);
}