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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct regulator_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  list; int /*<<< orphan*/  open_count; int /*<<< orphan*/  debugfs; TYPE_1__ disable_work; scalar_t__ supply; int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct regulator_dev*) ; 
 int /*<<< orphan*/  regulator_list_mutex ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct regulator_dev*) ; 

void FUNC12(struct regulator_dev *rdev)
{
	if (rdev == NULL)
		return;

	if (rdev->supply) {
		while (rdev->use_count--)
			FUNC7(rdev->supply);
		FUNC9(rdev->supply);
	}

	FUNC3(&rdev->disable_work.work);

	FUNC5(&regulator_list_mutex);

	FUNC1(rdev->debugfs);
	FUNC0(rdev->open_count);
	FUNC10(rdev);
	FUNC11(rdev);
	FUNC4(&rdev->list);
	FUNC8(rdev);
	FUNC2(&rdev->dev);

	FUNC6(&regulator_list_mutex);
}