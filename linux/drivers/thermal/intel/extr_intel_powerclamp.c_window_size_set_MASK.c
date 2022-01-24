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
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  window_size ; 

__attribute__((used)) static int FUNC4(const char *arg, const struct kernel_param *kp)
{
	int ret = 0;
	unsigned long new_window_size;

	ret = FUNC1(arg, 10, &new_window_size);
	if (ret)
		goto exit_win;
	if (new_window_size > 10 || new_window_size < 2) {
		FUNC2("Out of recommended window size %lu, between 2-10\n",
			new_window_size);
		ret = -EINVAL;
	}

	window_size = FUNC0(new_window_size, 2ul, 10ul);
	FUNC3();

exit_win:

	return ret;
}