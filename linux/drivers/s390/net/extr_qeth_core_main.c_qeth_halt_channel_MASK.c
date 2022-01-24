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
struct qeth_channel {scalar_t__ state; int /*<<< orphan*/  ccwdev; } ;
struct qeth_card {int /*<<< orphan*/  wait_q; } ;

/* Variables and functions */
 scalar_t__ CH_STATE_HALTED ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_HALT_CHANNEL_PARM ; 
 int /*<<< orphan*/  QETH_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card,
			     struct qeth_channel *channel)
{
	int rc;

	FUNC0(card, 3, "haltch");
	FUNC3(FUNC2(channel->ccwdev));
	rc = FUNC1(channel->ccwdev, QETH_HALT_CHANNEL_PARM);
	FUNC4(FUNC2(channel->ccwdev));

	if (rc)
		return rc;
	rc = FUNC5(card->wait_q,
			channel->state == CH_STATE_HALTED, QETH_TIMEOUT);
	if (rc == -ERESTARTSYS)
		return rc;
	if (channel->state != CH_STATE_HALTED)
		return -ETIME;
	return 0;
}