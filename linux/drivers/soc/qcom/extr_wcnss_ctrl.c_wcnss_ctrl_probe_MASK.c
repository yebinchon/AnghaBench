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
struct wcnss_ctrl {int /*<<< orphan*/  probe_work; int /*<<< orphan*/  cbc; int /*<<< orphan*/  ack; int /*<<< orphan*/  channel; int /*<<< orphan*/ * dev; } ;
struct rpmsg_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ept; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wcnss_ctrl*) ; 
 struct wcnss_ctrl* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wcnss_async_probe ; 

__attribute__((used)) static int FUNC5(struct rpmsg_device *rpdev)
{
	struct wcnss_ctrl *wcnss;

	wcnss = FUNC2(&rpdev->dev, sizeof(*wcnss), GFP_KERNEL);
	if (!wcnss)
		return -ENOMEM;

	wcnss->dev = &rpdev->dev;
	wcnss->channel = rpdev->ept;

	FUNC3(&wcnss->ack);
	FUNC3(&wcnss->cbc);
	FUNC0(&wcnss->probe_work, wcnss_async_probe);

	FUNC1(&rpdev->dev, wcnss);

	FUNC4(&wcnss->probe_work);

	return 0;
}