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
struct tee_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  num_users; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct tee_device *teedev)
{
	FUNC0(&teedev->mutex);
	if (!teedev->desc) {
		FUNC1(&teedev->mutex);
		return false;
	}
	teedev->num_users++;
	FUNC1(&teedev->mutex);
	return true;
}