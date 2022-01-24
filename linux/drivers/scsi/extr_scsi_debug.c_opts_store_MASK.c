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
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int SDEBUG_OPT_ALL_INJECTING ; 
 int SDEBUG_OPT_NOISE ; 
 scalar_t__ FUNC0 (char*,int,int*) ; 
 int sdebug_any_injecting_opt ; 
 int sdebug_opts ; 
 int sdebug_verbose ; 
 int FUNC1 (char const*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static ssize_t FUNC4(struct device_driver *ddp, const char *buf,
			  size_t count)
{
	int opts;
	char work[20];

	if (FUNC1(buf, "%10s", work) == 1) {
		if (FUNC2(work, "0x", 2) == 0) {
			if (FUNC0(work + 2, 16, &opts) == 0)
				goto opts_done;
		} else {
			if (FUNC0(work, 10, &opts) == 0)
				goto opts_done;
		}
	}
	return -EINVAL;
opts_done:
	sdebug_opts = opts;
	sdebug_verbose = !!(SDEBUG_OPT_NOISE & opts);
	sdebug_any_injecting_opt = !!(SDEBUG_OPT_ALL_INJECTING & opts);
	FUNC3();
	return count;
}