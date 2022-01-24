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
struct tee_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  c_no_users; int /*<<< orphan*/ * desc; int /*<<< orphan*/  num_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct tee_device *teedev)
{
	FUNC2(&teedev->mutex);
	/* Shouldn't put in this state */
	if (!FUNC0(!teedev->desc)) {
		teedev->num_users--;
		if (!teedev->num_users) {
			teedev->desc = NULL;
			FUNC1(&teedev->c_no_users);
		}
	}
	FUNC3(&teedev->mutex);
}