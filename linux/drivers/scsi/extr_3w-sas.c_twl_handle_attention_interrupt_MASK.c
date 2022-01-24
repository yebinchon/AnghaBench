#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * state; int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ TW_Device_Extension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int TWL_DOORBELL_ATTENTION_INTERRUPT ; 
 int TWL_DOORBELL_CONTROLLER_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  TW_DRIVER ; 
 int /*<<< orphan*/  TW_IN_ATTENTION_LOOP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TW_S_COMPLETED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC10(TW_Device_Extension *tw_dev)
{
	int retval = 1;
	u32 request_id, doorbell;

	/* Read doorbell status */
	doorbell = FUNC5(FUNC2(tw_dev));

	/* Check for controller errors */
	if (doorbell & TWL_DOORBELL_CONTROLLER_ERROR) {
		FUNC3(tw_dev->host, TW_DRIVER, 0xd, "Microcontroller Error: clearing");
		goto out;
	}

	/* Check if we need to perform an AEN drain */
	if (doorbell & TWL_DOORBELL_ATTENTION_INTERRUPT) {
		if (!(FUNC6(TW_IN_ATTENTION_LOOP, &tw_dev->flags))) {
			FUNC9(tw_dev, &request_id);
			if (FUNC7(tw_dev, request_id)) {
				tw_dev->state[request_id] = TW_S_COMPLETED;
				FUNC8(tw_dev, request_id);
				FUNC4(TW_IN_ATTENTION_LOOP, &tw_dev->flags);
			}
		}
	}

	retval = 0;
out:
	/* Clear doorbell interrupt */
	FUNC0(tw_dev);

	/* Make sure the clear was flushed by reading it back */
	FUNC5(FUNC1(tw_dev));

	return retval;
}