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
struct knav_range_info {int dummy; } ;
struct knav_device {int dummy; } ;

/* Variables and functions */
 struct knav_range_info* FUNC0 (struct knav_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct knav_device*,struct knav_range_info*) ; 

__attribute__((used)) static void FUNC2(struct knav_device *kdev)
{
	struct knav_range_info *range;

	for (;;) {
		range = FUNC0(kdev);
		if (!range)
			break;
		FUNC1(kdev, range);
	}
}