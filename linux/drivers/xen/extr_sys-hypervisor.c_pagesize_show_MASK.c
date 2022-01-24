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
struct hyp_sysfs_attr {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XENVER_pagesize ; 
 int FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct hyp_sysfs_attr *attr, char *buffer)
{
	int ret;

	ret = FUNC0(XENVER_pagesize, NULL);
	if (ret > 0)
		ret = FUNC1(buffer, "%x\n", ret);

	return ret;
}