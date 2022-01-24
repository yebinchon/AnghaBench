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
struct rpmsg_device {int /*<<< orphan*/  ept; } ;
struct glink_channel {int /*<<< orphan*/ * rpdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpmsg_device*) ; 
 struct glink_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rpmsg_device* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct rpmsg_device *rpdev = FUNC2(dev);
	struct glink_channel *channel = FUNC1(rpdev->ept);

	channel->rpdev = NULL;
	FUNC0(rpdev);
}