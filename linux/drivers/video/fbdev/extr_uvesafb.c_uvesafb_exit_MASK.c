#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct uvesafb_ktask {TYPE_1__ t; } ;
struct TYPE_5__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  TF_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  driver_attr_v86d ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  uvesafb_cn_id ; 
 int /*<<< orphan*/  uvesafb_device ; 
 TYPE_2__ uvesafb_driver ; 
 int /*<<< orphan*/  FUNC4 (struct uvesafb_ktask*) ; 
 int /*<<< orphan*/  FUNC5 (struct uvesafb_ktask*) ; 
 struct uvesafb_ktask* FUNC6 () ; 
 scalar_t__ v86d_started ; 

__attribute__((used)) static void FUNC7(void)
{
	struct uvesafb_ktask *task;

	if (v86d_started) {
		task = FUNC6();
		if (task) {
			task->t.flags = TF_EXIT;
			FUNC4(task);
			FUNC5(task);
		}
	}

	FUNC0(&uvesafb_cn_id);
	FUNC1(&uvesafb_driver.driver, &driver_attr_v86d);
	FUNC2(uvesafb_device);
	FUNC3(&uvesafb_driver);
}