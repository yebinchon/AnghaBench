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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int sdebug_every_nth ; 
 int sdebug_statistics ; 
 int FUNC1 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static ssize_t FUNC3(struct device_driver *ddp, const char *buf,
			       size_t count)
{
	int nth;

	if ((count > 0) && (1 == FUNC1(buf, "%d", &nth))) {
		sdebug_every_nth = nth;
		if (nth && !sdebug_statistics) {
			FUNC0("every_nth needs statistics=1, set it\n");
			sdebug_statistics = true;
		}
		FUNC2();
		return count;
	}
	return -EINVAL;
}