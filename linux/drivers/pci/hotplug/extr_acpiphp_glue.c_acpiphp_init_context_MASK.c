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
struct TYPE_2__ {int /*<<< orphan*/  fixup; int /*<<< orphan*/  notify; } ;
struct acpiphp_context {int refcount; TYPE_1__ hp; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  acpiphp_hotplug_notify ; 
 int /*<<< orphan*/  acpiphp_post_dock_fixup ; 
 struct acpiphp_context* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct acpiphp_context *FUNC2(struct acpi_device *adev)
{
	struct acpiphp_context *context;

	context = FUNC1(sizeof(*context), GFP_KERNEL);
	if (!context)
		return NULL;

	context->refcount = 1;
	context->hp.notify = acpiphp_hotplug_notify;
	context->hp.fixup = acpiphp_post_dock_fixup;
	FUNC0(adev, &context->hp);
	return context;
}