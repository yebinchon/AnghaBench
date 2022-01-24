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
struct qmp_cooling_device {char* name; int /*<<< orphan*/  cdev; int /*<<< orphan*/  state; struct qmp* qmp; } ;
struct qmp {int /*<<< orphan*/  dev; } ;
struct device_node {scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct device_node*,char*,struct qmp_cooling_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qmp_cdev_init_state ; 
 int /*<<< orphan*/  qmp_cooling_device_ops ; 

__attribute__((used)) static int FUNC4(struct qmp *qmp,
				  struct qmp_cooling_device *qmp_cdev,
				  struct device_node *node)
{
	char *cdev_name = (char *)node->name;

	qmp_cdev->qmp = qmp;
	qmp_cdev->state = qmp_cdev_init_state;
	qmp_cdev->name = cdev_name;
	qmp_cdev->cdev = FUNC3
				(qmp->dev, node,
				cdev_name,
				qmp_cdev, &qmp_cooling_device_ops);

	if (FUNC0(qmp_cdev->cdev))
		FUNC2(qmp->dev, "unable to register %s cooling device\n",
			cdev_name);

	return FUNC1(qmp_cdev->cdev);
}