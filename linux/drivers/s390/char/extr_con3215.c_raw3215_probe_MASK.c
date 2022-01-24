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
struct raw3215_info {struct ccw_device* cdev; } ;
struct ccw_device {int /*<<< orphan*/  handler; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int NR_3215 ; 
 struct raw3215_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct raw3215_info*) ; 
 struct raw3215_info** raw3215 ; 
 struct raw3215_info* FUNC2 () ; 
 int /*<<< orphan*/  raw3215_device_lock ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 
 int /*<<< orphan*/  raw3215_irq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (struct ccw_device *cdev)
{
	struct raw3215_info *raw;
	int line;

	/* Console is special. */
	if (raw3215[0] && (raw3215[0] == FUNC0(&cdev->dev)))
		return 0;

	raw = FUNC2();
	if (raw == NULL)
		return -ENOMEM;

	raw->cdev = cdev;
	FUNC1(&cdev->dev, raw);
	cdev->handler = raw3215_irq;

	FUNC4(&raw3215_device_lock);
	for (line = 0; line < NR_3215; line++) {
		if (!raw3215[line]) {
			raw3215[line] = raw;
			break;
		}
	}
	FUNC5(&raw3215_device_lock);
	if (line == NR_3215) {
		FUNC3(raw);
		return -ENODEV;
	}

	return 0;
}