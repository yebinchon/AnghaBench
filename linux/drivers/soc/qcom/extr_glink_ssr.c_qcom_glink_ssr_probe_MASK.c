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
struct rpmsg_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ept; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct glink_ssr {TYPE_1__ nb; int /*<<< orphan*/  ept; int /*<<< orphan*/ * dev; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct glink_ssr*) ; 
 struct glink_ssr* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qcom_glink_ssr_notify ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct rpmsg_device *rpdev)
{
	struct glink_ssr *ssr;

	ssr = FUNC1(&rpdev->dev, sizeof(*ssr), GFP_KERNEL);
	if (!ssr)
		return -ENOMEM;

	FUNC2(&ssr->completion);

	ssr->dev = &rpdev->dev;
	ssr->ept = rpdev->ept;
	ssr->nb.notifier_call = qcom_glink_ssr_notify;

	FUNC0(&rpdev->dev, ssr);

	return FUNC3(&ssr->nb);
}