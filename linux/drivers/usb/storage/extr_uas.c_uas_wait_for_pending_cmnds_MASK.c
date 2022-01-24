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
struct uas_dev_info {int /*<<< orphan*/  data_urbs; int /*<<< orphan*/  sense_urbs; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int ETIME ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uas_dev_info*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct uas_dev_info *devinfo)
{
	unsigned long start_time;
	int r;

	start_time = jiffies;
	do {
		FUNC0(&devinfo->work);

		r = FUNC3(&devinfo->sense_urbs, 5000);
		if (r == 0)
			return -ETIME;

		r = FUNC3(&devinfo->data_urbs, 500);
		if (r == 0)
			return -ETIME;

		if (FUNC1(jiffies, start_time + 5 * HZ))
			return -ETIME;
	} while (!FUNC2(devinfo));

	return 0;
}