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
struct scm_device {scalar_t__ address; int /*<<< orphan*/  dev; } ;
struct scm_blk_dev {int dummy; } ;
typedef  enum scm_event { ____Placeholder_scm_event } scm_event ;

/* Variables and functions */
#define  SCM_AVAIL 129 
#define  SCM_CHANGE 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct scm_device*) ; 
 struct scm_blk_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct scm_blk_dev*) ; 

__attribute__((used)) static void FUNC5(struct scm_device *scmdev, enum scm_event event)
{
	struct scm_blk_dev *bdev = FUNC2(&scmdev->dev);

	switch (event) {
	case SCM_CHANGE:
		FUNC3("%lx: The capabilities of the SCM increment changed\n",
			(unsigned long) scmdev->address);
		FUNC0(2, "State changed");
		FUNC1(2, scmdev);
		break;
	case SCM_AVAIL:
		FUNC0(2, "Increment available");
		FUNC1(2, scmdev);
		FUNC4(bdev);
		break;
	}
}