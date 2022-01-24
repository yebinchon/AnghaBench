#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rio_channel {int /*<<< orphan*/  id; int /*<<< orphan*/  comp_close; int /*<<< orphan*/  comp; } ;
typedef  enum rio_cm_state { ____Placeholder_rio_cm_state } rio_cm_state ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHOP ; 
 int EINTR ; 
 long ERESTARTSYS ; 
 int ETIMEDOUT ; 
 int RIO_CM_CONNECTED ; 
 int /*<<< orphan*/  RIO_CM_DESTROYING ; 
 int /*<<< orphan*/  WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct rio_channel*) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (struct rio_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rio_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct rio_channel*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 long FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct rio_channel *ch)
{
	unsigned long tmo = FUNC2(3000);
	enum rio_cm_state state;
	long wret;
	int ret = 0;

	FUNC3(CHOP, "ch_%d by %s(%d)",
		    ch->id, current->comm, FUNC7(current));

	state = FUNC4(ch, RIO_CM_DESTROYING);
	if (state == RIO_CM_CONNECTED)
		FUNC6(ch);

	FUNC0(&ch->comp);

	FUNC5(ch);
	wret = FUNC8(&ch->comp_close, tmo);

	FUNC3(WAIT, "wait on %d returns %ld", ch->id, wret);

	if (wret == 0) {
		/* Timeout on wait occurred */
		FUNC3(CHOP, "%s(%d) timed out waiting for ch %d",
		       current->comm, FUNC7(current), ch->id);
		ret = -ETIMEDOUT;
	} else if (wret == -ERESTARTSYS) {
		/* Wait_for_completion was interrupted by a signal */
		FUNC3(CHOP, "%s(%d) wait for ch %d was interrupted",
			current->comm, FUNC7(current), ch->id);
		ret = -EINTR;
	}

	if (!ret) {
		FUNC3(CHOP, "ch_%d resources released", ch->id);
		FUNC1(ch);
	} else {
		FUNC3(CHOP, "failed to release ch_%d resources", ch->id);
	}

	return ret;
}