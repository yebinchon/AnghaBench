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
struct rpmsg_ctrldev {int /*<<< orphan*/  cdev; } ;
struct device {int /*<<< orphan*/  devt; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rpmsg_ctrldev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpmsg_ctrldev*) ; 
 int /*<<< orphan*/  rpmsg_ctrl_ida ; 
 int /*<<< orphan*/  rpmsg_minor_ida ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct rpmsg_ctrldev *ctrldev = FUNC2(dev);

	FUNC3(&rpmsg_ctrl_ida, dev->id);
	FUNC3(&rpmsg_minor_ida, FUNC0(dev->devt));
	FUNC1(&ctrldev->cdev);
	FUNC4(ctrldev);
}