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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  duration ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(const char *arg, const struct kernel_param *kp)
{
	int ret = 0;
	unsigned long new_duration;

	ret = FUNC1(arg, 10, &new_duration);
	if (ret)
		goto exit;
	if (new_duration > 25 || new_duration < 6) {
		FUNC2("Out of recommended range %lu, between 6-25ms\n",
			new_duration);
		ret = -EINVAL;
	}

	duration = FUNC0(new_duration, 6ul, 25ul);
	FUNC3();

exit:

	return ret;
}