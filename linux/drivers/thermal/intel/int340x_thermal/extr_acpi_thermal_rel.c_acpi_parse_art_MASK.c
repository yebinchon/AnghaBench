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
struct TYPE_2__ {int count; int /*<<< orphan*/ * elements; } ;
union acpi_object {scalar_t__ type; scalar_t__ target; scalar_t__ source; TYPE_1__ package; } ;
struct art {scalar_t__ type; scalar_t__ target; scalar_t__ source; TYPE_1__ package; } ;
struct acpi_device {int dummy; } ;
struct acpi_buffer {int member_0; char* member_1; int length; union acpi_object* pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (scalar_t__,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct acpi_buffer*,struct acpi_buffer*) ; 
 union acpi_object* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

int FUNC8(acpi_handle handle, int *art_count, struct art **artp,
		bool create_dev)
{
	acpi_status status;
	int result = 0;
	int i;
	int nr_bad_entries = 0;
	struct art *arts;
	struct acpi_device *adev;
	union acpi_object *p;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	struct acpi_buffer element = { 0, NULL };
	struct acpi_buffer art_format =	{
		sizeof("RRNNNNNNNNNNN"), "RRNNNNNNNNNNN" };

	status = FUNC2(handle, "_ART", NULL, &buffer);
	if (FUNC0(status))
		return -ENODEV;

	p = buffer.pointer;
	if (!p || (p->type != ACPI_TYPE_PACKAGE)) {
		FUNC6("Invalid _ART data\n");
		result = -EFAULT;
		goto end;
	}

	/* ignore p->package.elements[0], as this is _ART Revision field */
	*art_count = p->package.count - 1;
	arts = FUNC4(*art_count, sizeof(struct art), GFP_KERNEL);
	if (!arts) {
		result = -ENOMEM;
		goto end;
	}

	for (i = 0; i < *art_count; i++) {
		struct art *art = &arts[i - nr_bad_entries];

		element.length = sizeof(struct art);
		element.pointer = art;

		status = FUNC3(&(p->package.elements[i + 1]),
					      &art_format, &element);
		if (FUNC0(status)) {
			FUNC7("_ART package %d is invalid, ignored", i);
			nr_bad_entries++;
			continue;
		}
		if (!create_dev)
			continue;

		if (art->source) {
			result = FUNC1(art->source, &adev);
			if (result)
				FUNC7("Failed to get source ACPI device\n");
		}
		if (art->target) {
			result = FUNC1(art->target, &adev);
			if (result)
				FUNC7("Failed to get target ACPI device\n");
		}
	}

	*artp = arts;
	/* don't count bad entries */
	*art_count -= nr_bad_entries;
end:
	FUNC5(buffer.pointer);
	return result;
}