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
struct qeth_channel {int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  state; struct ccw_device* ccwdev; } ;
struct ccw_device {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  qeth_irq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qeth_channel *channel)
{
	struct ccw_device *cdev = channel->ccwdev;

	FUNC0(SETUP, 2, "setupch");

	channel->state = CH_STATE_DOWN;
	FUNC1(&channel->irq_pending, 0);

	FUNC3(FUNC2(cdev));
	cdev->handler = qeth_irq;
	FUNC4(FUNC2(cdev));
}