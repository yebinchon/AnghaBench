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
struct qeth_channel {struct ccw_device* ccwdev; } ;
struct ccw_device {int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qeth_channel *channel)
{
	struct ccw_device *cdev = channel->ccwdev;

	FUNC0(SETUP, 2, "freech");

	FUNC2(FUNC1(cdev));
	cdev->handler = NULL;
	FUNC3(FUNC1(cdev));
}