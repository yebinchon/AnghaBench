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
struct acpiphp_context {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 struct acpiphp_context* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpiphp_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpiphp_context*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *adev, u32 type)
{
	struct acpiphp_context *context;

	context = FUNC0(adev);
	if (!context)
		return -ENODATA;

	FUNC2(type, context);
	FUNC1(context);
	return 0;
}