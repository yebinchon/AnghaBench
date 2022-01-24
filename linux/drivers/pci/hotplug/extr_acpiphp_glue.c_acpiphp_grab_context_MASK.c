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
struct TYPE_3__ {TYPE_2__* parent; } ;
struct acpiphp_context {TYPE_1__ func; } ;
struct acpi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ is_going_away; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct acpiphp_context* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpiphp_context*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static struct acpiphp_context *FUNC5(struct acpi_device *adev)
{
	struct acpiphp_context *context;

	FUNC0();
	context = FUNC2(adev);
	if (!context || context->func.parent->is_going_away) {
		FUNC1();
		return NULL;
	}
	FUNC4(context->func.parent);
	FUNC3(context);
	FUNC1();
	return context;
}