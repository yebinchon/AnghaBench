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
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct rpmsg_eptdev {int /*<<< orphan*/  queue; int /*<<< orphan*/  ept_lock; int /*<<< orphan*/ * ept; struct device dev; } ;
struct inode {int /*<<< orphan*/  i_cdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct rpmsg_eptdev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filp)
{
	struct rpmsg_eptdev *eptdev = FUNC0(inode->i_cdev);
	struct device *dev = &eptdev->dev;
	struct sk_buff *skb;

	/* Close the endpoint, if it's not already destroyed by the parent */
	FUNC2(&eptdev->ept_lock);
	if (eptdev->ept) {
		FUNC5(eptdev->ept);
		eptdev->ept = NULL;
	}
	FUNC3(&eptdev->ept_lock);

	/* Discard all SKBs */
	while (!FUNC7(&eptdev->queue)) {
		skb = FUNC6(&eptdev->queue);
		FUNC1(skb);
	}

	FUNC4(dev);

	return 0;
}