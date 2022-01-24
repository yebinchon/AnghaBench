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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int sdebug_cdb_len ; 

__attribute__((used)) static ssize_t FUNC2(struct device_driver *ddp, const char *buf,
			     size_t count)
{
	int ret, n;

	ret = FUNC1(buf, 0, &n);
	if (ret)
		return ret;
	sdebug_cdb_len = n;
	FUNC0();
	return count;
}