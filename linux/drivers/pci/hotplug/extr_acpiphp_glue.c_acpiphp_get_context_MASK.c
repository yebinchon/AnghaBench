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
struct acpiphp_context {int /*<<< orphan*/  refcount; } ;
struct acpi_device {int /*<<< orphan*/  hp; } ;

/* Variables and functions */
 struct acpiphp_context* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct acpiphp_context *FUNC1(struct acpi_device *adev)
{
	struct acpiphp_context *context;

	if (!adev->hp)
		return NULL;

	context = FUNC0(adev->hp);
	context->refcount++;
	return context;
}