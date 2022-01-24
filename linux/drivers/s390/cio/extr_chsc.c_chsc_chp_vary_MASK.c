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
struct chp_id {int dummy; } ;
struct channel_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct channel_path*) ; 
 struct channel_path* FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct chp_id*) ; 
 int /*<<< orphan*/  s390_subchannel_vary_chpid_off ; 
 int /*<<< orphan*/  s390_subchannel_vary_chpid_on ; 

int FUNC5(struct chp_id chpid, int on)
{
	struct channel_path *chp = FUNC1(chpid);

	/* Wait until previous actions have settled. */
	FUNC3();
	/*
	 * Redo PathVerification on the devices the chpid connects to
	 */
	if (on) {
		/* Try to update the channel path description. */
		FUNC0(chp);
		FUNC4(s390_subchannel_vary_chpid_on,
					   NULL, &chpid);
		FUNC2();
	} else
		FUNC4(s390_subchannel_vary_chpid_off,
					   NULL, &chpid);

	return 0;
}