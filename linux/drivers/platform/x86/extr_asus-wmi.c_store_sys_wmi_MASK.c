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
typedef  int /*<<< orphan*/  u32 ;
struct asus_wmi {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct asus_wmi*,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct asus_wmi *asus, int devid,
			     const char *buf, size_t count)
{
	u32 retval;
	int err, value;

	value = FUNC0(asus, devid);
	if (value < 0)
		return value;

	err = FUNC2(buf, 0, &value);
	if (err)
		return err;

	err = FUNC1(devid, value, &retval);
	if (err < 0)
		return err;

	return count;
}