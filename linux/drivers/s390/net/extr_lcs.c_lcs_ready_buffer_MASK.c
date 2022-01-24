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
struct lcs_channel {int /*<<< orphan*/  ccwdev; TYPE_1__* ccws; struct lcs_buffer* iob; } ;
struct lcs_buffer {scalar_t__ state; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LCS_BUF_STATE_LOCKED ; 
 scalar_t__ LCS_BUF_STATE_PROCESSED ; 
 scalar_t__ LCS_BUF_STATE_READY ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lcs_channel*,int) ; 
 int FUNC3 (struct lcs_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC7(struct lcs_channel *channel, struct lcs_buffer *buffer)
{
	unsigned long flags;
	int index, rc;

	FUNC1(5, trace, "rdybuff");
	FUNC0(buffer->state != LCS_BUF_STATE_LOCKED &&
	       buffer->state != LCS_BUF_STATE_PROCESSED);
	FUNC5(FUNC4(channel->ccwdev), flags);
	buffer->state = LCS_BUF_STATE_READY;
	index = buffer - channel->iob;
	/* Set length. */
	channel->ccws[index].count = buffer->count;
	/* Check relevant PCI/suspend bits. */
	FUNC2(channel, index);
	rc = FUNC3(channel);
	FUNC6(FUNC4(channel->ccwdev), flags);
	return rc;
}