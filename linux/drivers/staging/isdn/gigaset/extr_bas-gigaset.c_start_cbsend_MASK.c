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
struct cmdbuf_t {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int /*<<< orphan*/  cmdlock; struct cmdbuf_t* cmdbuf; int /*<<< orphan*/  bcs; TYPE_1__ hw; } ;
struct bas_cardstate {int basstate; scalar_t__ retry_cmd_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAS_TIMEOUT ; 
 int BS_ATOPEN ; 
 int BS_ATREADY ; 
 int BS_SUSPEND ; 
 int /*<<< orphan*/  DEBUG_OUTPUT ; 
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  HD_OPEN_ATCHANNEL ; 
 int FUNC0 (struct cardstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct cardstate *cs)
{
	struct cmdbuf_t *cb;
	struct bas_cardstate *ucs = cs->hw.bas;
	unsigned long flags;
	int rc;
	int retval = 0;

	/* check if suspend requested */
	if (ucs->basstate & BS_SUSPEND) {
		FUNC2(DEBUG_OUTPUT, "suspending");
		return -EHOSTUNREACH;
	}

	/* check if AT channel is open */
	if (!(ucs->basstate & BS_ATOPEN)) {
		FUNC2(DEBUG_OUTPUT, "AT channel not open");
		rc = FUNC3(cs->bcs, HD_OPEN_ATCHANNEL, 0, BAS_TIMEOUT);
		if (rc < 0) {
			/* flush command queue */
			FUNC4(&cs->cmdlock, flags);
			while (cs->cmdbuf != NULL)
				FUNC1(cs);
			FUNC5(&cs->cmdlock, flags);
		}
		return rc;
	}

	/* try to send first command in queue */
	FUNC4(&cs->cmdlock, flags);

	while ((cb = cs->cmdbuf) != NULL && (ucs->basstate & BS_ATREADY)) {
		ucs->retry_cmd_out = 0;
		rc = FUNC0(cs, cb->buf, cb->len);
		if (FUNC6(rc)) {
			retval = rc;
			FUNC1(cs);
		}
	}

	FUNC5(&cs->cmdlock, flags);
	return retval;
}