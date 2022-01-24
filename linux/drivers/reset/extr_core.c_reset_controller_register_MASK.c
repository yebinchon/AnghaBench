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
struct reset_controller_dev {int of_reset_n_cells; int /*<<< orphan*/  list; int /*<<< orphan*/  reset_control_head; scalar_t__ of_xlate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ of_reset_simple_xlate ; 
 int /*<<< orphan*/  reset_controller_list ; 
 int /*<<< orphan*/  reset_list_mutex ; 

int FUNC4(struct reset_controller_dev *rcdev)
{
	if (!rcdev->of_xlate) {
		rcdev->of_reset_n_cells = 1;
		rcdev->of_xlate = of_reset_simple_xlate;
	}

	FUNC0(&rcdev->reset_control_head);

	FUNC2(&reset_list_mutex);
	FUNC1(&rcdev->list, &reset_controller_list);
	FUNC3(&reset_list_mutex);

	return 0;
}