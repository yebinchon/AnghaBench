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
typedef  int u32 ;
struct wmax_basic_args {int /*<<< orphan*/  arg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  WMAX_METHOD_HDMI_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct wmax_basic_args*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	acpi_status status;
	u32 out_data;
	struct wmax_basic_args in_args = {
		.arg = 0,
	};
	status =
	    FUNC1(&in_args, WMAX_METHOD_HDMI_STATUS,
				   (u32 *) &out_data);

	if (FUNC0(status)) {
		if (out_data == 1)
			return FUNC3(buf, PAGE_SIZE,
					 "[input] gpu unknown\n");
		else if (out_data == 2)
			return FUNC3(buf, PAGE_SIZE,
					 "input [gpu] unknown\n");
	}
	FUNC2("alienware-wmi: unknown HDMI source status: %u\n", status);
	return FUNC3(buf, PAGE_SIZE, "input gpu [unknown]\n");
}