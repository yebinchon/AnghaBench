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
struct lcs_channel {int /*<<< orphan*/  ccwdev; } ;
struct lcs_buffer {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LCS_BUF_STATE_EMPTY ; 
 scalar_t__ LCS_BUF_STATE_LOCKED ; 
 scalar_t__ LCS_BUF_STATE_PROCESSED ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC5(struct lcs_channel *channel, struct lcs_buffer *buffer)
{
	unsigned long flags;

	FUNC1(5, trace, "relbuff");
	FUNC0(buffer->state != LCS_BUF_STATE_LOCKED &&
	       buffer->state != LCS_BUF_STATE_PROCESSED);
	FUNC3(FUNC2(channel->ccwdev), flags);
	buffer->state = LCS_BUF_STATE_EMPTY;
	FUNC4(FUNC2(channel->ccwdev), flags);
}