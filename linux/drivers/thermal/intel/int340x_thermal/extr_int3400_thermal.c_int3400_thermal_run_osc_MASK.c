#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ pointer; } ;
struct TYPE_3__ {int length; int* pointer; } ;
struct acpi_osc_context {int rev; TYPE_2__ ret; TYPE_1__ cap; int /*<<< orphan*/  uuid_str; } ;
typedef  enum int3400_thermal_uuid { ____Placeholder_int3400_thermal_uuid } int3400_thermal_uuid ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EPERM ; 
 size_t OSC_QUERY_DWORD ; 
 size_t OSC_SUPPORT_DWORD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_osc_context*) ; 
 int /*<<< orphan*/ * int3400_thermal_uuids ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(acpi_handle handle,
				enum int3400_thermal_uuid uuid, bool enable)
{
	u32 ret, buf[2];
	acpi_status status;
	int result = 0;
	struct acpi_osc_context context = {
		.uuid_str = int3400_thermal_uuids[uuid],
		.rev = 1,
		.cap.length = 8,
	};

	buf[OSC_QUERY_DWORD] = 0;
	buf[OSC_SUPPORT_DWORD] = enable;

	context.cap.pointer = buf;

	status = FUNC1(handle, &context);
	if (FUNC0(status)) {
		ret = *((u32 *)(context.ret.pointer + 4));
		if (ret != enable)
			result = -EPERM;
	} else
		result = -EPERM;

	FUNC2(context.ret.pointer);
	return result;
}