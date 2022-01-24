#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int EIO ; 
 int /*<<< orphan*/  WM_FAN_MODE ; 
 int /*<<< orphan*/  WM_GET ; 
 int /*<<< orphan*/  WM_SET ; 
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int FUNC1 (char const*,int*) ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			      struct device_attribute *attr,
			      const char *buffer, size_t count)
{
	bool value;
	union acpi_object *r;
	u32 m;
	int ret;

	ret = FUNC1(buffer, &value);
	if (ret)
		return ret;

	r = FUNC2(WM_FAN_MODE, WM_GET, 0);
	if (!r)
		return -EIO;

	if (r->type != ACPI_TYPE_INTEGER) {
		FUNC0(r);
		return -EIO;
	}

	m = r->integer.value;
	FUNC0(r);
	r = FUNC2(WM_FAN_MODE, WM_SET, (m & 0xffffff0f) | (value << 4));
	FUNC0(r);
	r = FUNC2(WM_FAN_MODE, WM_SET, (m & 0xfffffff0) | value);
	FUNC0(r);

	return count;
}