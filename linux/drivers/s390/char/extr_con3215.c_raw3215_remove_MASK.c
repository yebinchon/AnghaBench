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
struct raw3215_info {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int NR_3215 ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 struct raw3215_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct raw3215_info** raw3215 ; 
 int /*<<< orphan*/  raw3215_device_lock ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6 (struct ccw_device *cdev)
{
	struct raw3215_info *raw;
	unsigned int line;

	FUNC0(cdev);
	raw = FUNC1(&cdev->dev);
	if (raw) {
		FUNC4(&raw3215_device_lock);
		for (line = 0; line < NR_3215; line++)
			if (raw3215[line] == raw)
				break;
		raw3215[line] = NULL;
		FUNC5(&raw3215_device_lock);
		FUNC2(&cdev->dev, NULL);
		FUNC3(raw);
	}
}