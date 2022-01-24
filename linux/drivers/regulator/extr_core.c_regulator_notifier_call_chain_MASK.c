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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct regulator_dev {TYPE_1__ mutex; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct regulator_dev*,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct regulator_dev *rdev,
				  unsigned long event, void *data)
{
	FUNC1(&rdev->mutex.base);

	FUNC0(rdev, event, data);
	return NOTIFY_DONE;

}