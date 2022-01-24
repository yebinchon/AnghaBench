#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct rpmsg_device {TYPE_2__ dev; void* dst; void* src; TYPE_1__ id; int /*<<< orphan*/ * ops; } ;
struct qcom_smd_edge {int /*<<< orphan*/  dev; int /*<<< orphan*/  of_node; } ;
struct qcom_smd_device {struct rpmsg_device rpdev; struct qcom_smd_edge* edge; } ;
struct qcom_smd_channel {int /*<<< orphan*/  name; struct qcom_smd_edge* edge; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* RPMSG_ADDR_ANY ; 
 int /*<<< orphan*/  RPMSG_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct qcom_smd_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_smd_device_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_smd_release_device ; 
 int FUNC3 (struct rpmsg_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qcom_smd_channel *channel)
{
	struct qcom_smd_device *qsdev;
	struct rpmsg_device *rpdev;
	struct qcom_smd_edge *edge = channel->edge;

	FUNC0(&edge->dev, "registering '%s'\n", channel->name);

	qsdev = FUNC1(sizeof(*qsdev), GFP_KERNEL);
	if (!qsdev)
		return -ENOMEM;

	/* Link qsdev to our SMD edge */
	qsdev->edge = edge;

	/* Assign callbacks for rpmsg_device */
	qsdev->rpdev.ops = &qcom_smd_device_ops;

	/* Assign public information to the rpmsg_device */
	rpdev = &qsdev->rpdev;
	FUNC4(rpdev->id.name, channel->name, RPMSG_NAME_SIZE);
	rpdev->src = RPMSG_ADDR_ANY;
	rpdev->dst = RPMSG_ADDR_ANY;

	rpdev->dev.of_node = FUNC2(edge->of_node, channel->name);
	rpdev->dev.parent = &edge->dev;
	rpdev->dev.release = qcom_smd_release_device;

	return FUNC3(rpdev);
}